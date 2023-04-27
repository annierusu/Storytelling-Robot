#!/usr/bin/env python

from pynput.keyboard import Key, Listener
import sys
import smach
import rospy
import json
from std_msgs.msg import String
from qt_nuitrack_app.msg import Gestures
import translators as ts
from qt_robot_interface.srv import *
import story_generation as ai
from sentiment_analysis import Classifier, sentiment 
from robot_interaction import Robot
import os 
from pathlib import Path
from mock_robot_interaction import Mock_Robot
import asyncio
import websockets
import threading
from threading import Thread
import time
import functools
import webbrowser

#for web module
global_data = None
global_data_received = False
local_data = None #data stored from response from server
lock = threading.Lock()
t = None

#for evaluation state
done_questions = True
questions = []

#for the sentiment classifier
AUTO_SPLIT = True 
classifier = Classifier()

#NO ROBOT SUPPORT: Mock_Robot() 
robot = Mock_Robot() #Robot()

#For the gestures
stateIndex = 0
state = ['Greetings', 'Storytelling', 'Evaluation', 'Goodbye']

chosen_language = -1
language = ''
next_global_state = ''


while chosen_language != 0 and chosen_language != 1 and chosen_language != 2:
    print("\nPlease choose your preferred language:\nType 0 for english\nType 1 for german\nType 2 for french\n") 
    chosen_language = int(input())


#This function is called when a key is pressed and changes the next state of the state machine
def key_transition(key):
    global next_global_state
    global stateIndex
    global state

    if state[stateIndex] == 'Greetings':
        if key == Key.shift: #Go to Storytelling
            next_global_state = 'nextContent'
            stateIndex = 1

    elif state[stateIndex] == 'Storytelling':
        if key== Key.shift: #Go to Evaluation
            next_global_state = 'nextEvaluation'
            stateIndex = 2
        elif key == Key.alt: #Repeat the story
            next_global_state = 'repeatStory'
        elif key == Key.esc: #Goodbye
            next_global_state = 'nextGoodbye'
            stateIndex = 3

    elif state[stateIndex] == 'Evaluation':
        if key == Key.shift: #Go to another story
            next_global_state = 'nextStory'
            stateIndex = 1
        elif key == Key.esc: #Goodbye
            next_global_state = 'nextGoodbye'
            stateIndex = 3
        

#For the keyboard
ls = Listener(on_press = key_transition)
ls.start()


#initiate node #TODO: i think delete?
#rospy.init_node('smach_example_state_machine')

#Create service to change the language 
#NO ROBOT SUPPORT: comment the two lines below
# speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
# rospy.wait_for_service('/qt_robot/speech/config')

if chosen_language == 1:
    language = 'de'
    # status = speechConfig("de-DE",0,100) #NO ROBOT SUPPORT: comment this line
elif chosen_language == 2:
    language = 'fr'
    # status = speechConfig("fr-FR",0,100) #NO ROBOT SUPPORT: comment this line
elif chosen_language == 0: 
    language = 'en'
    # status = speechConfig("en-US",0,100) #NO ROBOT SUPPORT: comment this line



#translate the given message to the language chosen by the user at the start, specifying if QT will say it or not
def qt_says(message, to_say = True, speech=None):
    if language  != 'en':
        message = ts.translate_text(message, translator='google', from_language='en', to_language=language) 
    if to_say :
        speech(message) 
    else:
        print(message,"\n") #TODO: change as needs to be on web


#This is the first state of the state machine. It begins the interaction with the robot. 
class Greetings(smach.State):

    def __init__(self):
        smach.State.__init__(self, outcomes=['nextContent'])

    def execute(self, userdata):
        
        try: #TODO: is the try except necessary?
            robot.playGesture(sentiment.JOYFUL)
            greetings = "Hi! My name is Q T and we are going to learn new things today, are you ready to go on an adventure?"
            qt_says(greetings, speech = say_serv_lips)
        except rospy.ROSInterruptException:
            pass

        instruction = 'Press SHIFT to continue' #TODO: change to web
        qt_says(instruction, to_say=False)

        global next_global_state
        next_global_state = ''
        while next_global_state == '':
            pass 
        return next_global_state


#define state Storytelling
class Storytelling(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextGoodbye', 'nextEvaluation', 'repeatStory'])
        
        
    def execute(self, userdata):
        global speechSay_pub
        global next_global_state
        global local_data
        
        #TODO: write instructions for the user in the website (what each key does for sm)
        #Here the user has time to fill out the story generation form 
        local_data = await_response()
        #print("LOCAL DATA RECIEVED: ", local_data)

        inputs = local_data.split("|")

        ai_level = inputs[0]
        story_prompt = inputs[1]

        if(ai_level == 1):
            story_prompt = "Make the following text into a story: " + story_prompt 
        elif(ai_level == 2):
            story_prompt = "Write a story about " + story_prompt + ", taking it step by step."
        
        #story = ai.generate_fake_response(story_prompt)
        story = ai.generate_fake_response(story_prompt)

        sentences_with_sentiment = classifier.classify(story, AUTO_SPLIT)

        #print("SENTENCES WITH SENTIMENT: ", sentences_with_sentiment)

        for sentence in sentences_with_sentiment:
            s = sentiment(sentences_with_sentiment[sentence])
            if s == sentiment.NEUTRAL:
                qt_says(sentence, speech = say_serv_lips) #speak with lip sync
            else: 
                robot.showEmotion(s)
                robot.playGesture(s)
                qt_says(sentence, speech=say) #speak without lip sync as showing emotion TODO: maybe try using service instead of pub?

        print('\n-----------------\n')
        qt_says('press SHIFT to go to evaluation', to_say=False)
        qt_says('press ALT to repeat the story', to_say=False)
        qt_says('press ESC to say goodbye', to_say=False)
        print('-----------------\n')
        
        next_global_state = ''
        while next_global_state == '':
            pass 
        return next_global_state


def next_q(key):
    global questions
    global done_questions
    if(key == Key.down):
        if(len(questions) > 0):
            qt_says(questions[0],speech = say_serv_lips)
            questions.pop(0)
            #print("QUESTIONS LEFT: ", questions)
        else: done_questions = True #we press down arrow, but all the questions have been said already
            
#define state Evaluation
class Evaluation(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextStory', 'nextGoodbye'])

    def execute(self, userdata):
        global speechSay_pub
        global next_global_state
        global next_question
        global questions
        global done_questions
        global local_data
        
        q_ls = Listener(on_press = next_q)
        q_ls.start()
        
        questions = local_data.split("|")[2].splitlines()
        if questions:
            done_questions = False
            qt_says('Press the down arrow to go to the next question', to_say=False)
            qt_says('Now that we have finished the story, it is time for your evaluation! How well did you understand the story?',speech = say_serv_lips)
            print(questions)
            while not done_questions: #wait for all questions to be said and discussed
                pass
                
            robot.showEmotion(sentiment.JOYFUL)
            qt_says('Thank you for answering my questions!',speech = say_serv_lips)

        print('\n-----------------\n')
        qt_says('Do you want to hear another story ?',speech = say_serv_lips)
        qt_says('press SHIFT to hear another story', to_say=False)
        qt_says('press ESC to say goodbye', to_say=False)
        print('-----------------\n')
        
        next_global_state = ''
        while next_global_state == '':
            pass 
        return next_global_state

#define state Goodbye
class Goodbye(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['finishState'])

    def execute(self, userdata):
        global speechSay_pub
        robot.showEmotion(sentiment.JOYFUL)
        qt_says('Thank you for your attention! I hope you learned a lot. See you next time!',speech = say_serv_lips)
        return 'finishState'

#webserver funcitons 
def await_response():
    global lock
    global global_data
    global global_data_received

    while True: 
        lock.acquire()
        if global_data_received:
            global_data_received = False
            temp = global_data
            lock.release()
            return temp
        lock.release()
        time.sleep(0.1)

async def handler(websocket, path, callback):
    data = await websocket.recv()
    if(data == "close"):
        await websocket.close()
        exit(0)
    callback(data)

def main_callback(data):
    global lock
    global global_data
    global global_data_received
    lock.acquire()
    global_data_received = True
    global_data = data
    lock.release()

def run_server(callback):
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    loop1 = asyncio.get_event_loop()
    start_server = websockets.serve(functools.partial(handler, callback=callback), "localhost", 10000)
    loop1.run_until_complete(start_server)
    loop1.run_forever()


def start_web_module():
    global t
    t = Thread(target=run_server, args=(main_callback,))
    t.start()
    


def main():

    #create a smach state machine
    sm = smach.StateMachine(outcomes=['outcome4']) # i assume outcome4 is the final state
    
    #open the container
    with sm:
        #Add states to the container
        smach.StateMachine.add('GREETINGS', Greetings(), transitions={
            'nextContent':'STORYTELLING'
        })
        smach.StateMachine.add('STORYTELLING', Storytelling(), transitions={
            'repeatStory':'STORYTELLING',
            'nextEvaluation': 'EVALUATION',
            'nextGoodbye':'GOODBYE'
        })
        smach.StateMachine.add('EVALUATION', Evaluation(), transitions = {
            'nextStory': 'STORYTELLING',
            'nextGoodbye': 'GOODBYE'

        })
        smach.StateMachine.add('GOODBYE', Goodbye(), transitions={
            'finishState': 'outcome4'
        })

    #Execute smach plan
    start_web_module()
    outcome = sm.execute()
    t.join()
    
if __name__ == '__main__':
    main()


