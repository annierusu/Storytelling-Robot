#!/usr/bin/env python3

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
robot = Robot() #Robot()

#For the gestures
state_index = 0
state = ['Greetings', 'Storytelling', 'Evaluation', 'Goodbye']

chosen_language = -1
language = ''
next_global_state = ''


# while chosen_language != 0 and chosen_language != 1 and chosen_language != 2:
#     print("\nPlease choose your preferred language:\nType 0 for english\nType 1 for german\nType 2 for french\n") 
#     chosen_language = int(input())


#This function is called when a key is pressed and changes the next state of the state machine
def key_transition(key):
    global next_global_state
    global state_index
    global state

    if state[state_index] == 'Greetings':
        if key == Key.right: #Go to Storytelling
            next_global_state = 'nextContent'
            state_index = 1

    elif state[state_index] == 'Storytelling':
        if key== Key.right: #Go to Evaluation
            next_global_state = 'nextEvaluation'
            state_index = 2
        elif key == Key.left: #Repeat the story
            next_global_state = 'repeatStory'
        elif key == Key.esc: #Goodbye
            next_global_state = 'nextGoodbye'
            state_index = 3

    elif state[state_index] == 'Evaluation':
        if key == Key.left: #Go to another story
            next_global_state = 'nextStory'
            state_index = 1
        elif key == Key.esc: #Goodbye
            next_global_state = 'nextGoodbye'
            state_index = 3
        

#For the keyboard
ls = Listener(on_press = key_transition)
ls.start()

#configure the language of the robot, based on what the user chose in the website
def config_language():
    global chosen_language
    global language
    #NO ROBOT SUPPORT: comment the two lines below
    speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    rospy.wait_for_service('/qt_robot/speech/config')

    chosen_language = int(await_response())
    print("Language chosen: ", chosen_language)
    print(chosen_language==0)
    print()
    if chosen_language == 2:
        language = 'de'
        status = speechConfig("de-DE",0,100) #NO ROBOT SUPPORT: comment this line
    elif chosen_language == 1:
        language = 'fr'
        status = speechConfig("fr-FR",0,100) #NO ROBOT SUPPORT: comment this line
    elif chosen_language == 0: 
        language = 'en'
        status = speechConfig("en-US",0,100) #NO ROBOT SUPPORT: comment this line
    print("Language chosen: ", language)
    print()


#translate the given message to the language chosen by the user at the start, specifying if QT will say it or not
def qt_says(message, to_say = True, speech=robot.say_serv_lips):
    #if language  != 'en':
        #message = ts.translate_text(message, translator='google', from_language='en', to_language=language) 
    if to_say :
        speech(message) 
    else:
        print(message,"\n") 


#This is the first state of the state machine. It begins the interaction with the robot. 
class Greetings(smach.State):

    def __init__(self):
        smach.State.__init__(self, outcomes=['nextContent'])

    def execute(self, userdata):
        global next_global_state
        global state_index

        robot.playGesture('QT/hi')
        # greetings = "Hi! My name is Q T and we are going to learn new things today, are you ready to go on an adventure?"
        # translated =ts.translate_text(greetings, translator='google', from_language='en', to_language=language)
        greetings = "Salut! Je m'appelle Q T et nous allons apprendre de nouvelles choses aujourd'hui, êtes-vous prêt à partir à l'aventure ?"
        qt_says(greetings)
        rospy.sleep(0.2)

        #Go to storytelling state
        next_global_state = 'nextContent'
        state_index = 1
        
        return next_global_state


#Storytelling state of the state machine. Here the user has time to fill out the story generation form and QT will recite the story
class Storytelling(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextGoodbye', 'nextEvaluation', 'repeatStory'])
        
        
    def execute(self, userdata):
        global next_global_state
        global local_data
        
        #Here the user has time to fill out the story generation form 
        local_data = await_response()
        print("LOCAL DATA RECIEVED: ", local_data)

        inputs = local_data.split("|")

        ai_level = int(inputs[0])
        story_prompt = inputs[1]
        story_length = int(inputs[3])
        

        if(ai_level == 1):
            story_prompt = ai.generate_response("Make the following text into a story, understandable by a 5 year old, using characters and dialogue: " + story_prompt, max_tokens=story_length)
            # print()
            # print("STORY LEVEL 1:", story_prompt)
            # print()
        elif(ai_level == 2):
            story_prompt = ai.generate_response("Write a story about " + story_prompt + ", understandable by a 5 year old, using characters and dialogue, taking it step by step.", max_tokens=story_length)
            # print()
            # print("STORY LEVEL 2:", story_prompt)
            # print()

        #story = ai.generate_fake_response(story_prompt) #debug

        #save story to files to have it: 

        # with open("QT_story_{}".format(story_prompt[20:40]), 'w') as f:
        #     f.write(story_prompt)

        sentences_with_sentiment = classifier.classify(story_prompt, AUTO_SPLIT)

        #print("SENTENCES WITH SENTIMENT: ", sentences_with_sentiment)

        for sentence in sentences_with_sentiment:
            s = sentiment(sentences_with_sentiment[sentence])
            # qt_says(sentence)
            # rospy.sleep(0.2)
            if s == sentiment.NEUTRAL:
                qt_says(sentence) #speak with lip sync
                rospy.sleep(0.2)
            else: 
                robot.showEmotion(s)
                robot.playGesture(s)
                qt_says(sentence, speech=robot.say_serv) #speak without lip sync as showing emotion 
                rospy.sleep(0.2)
        print('\n-----------------\n')
        qt_says('press RIGHT ARROW to go to evaluation', to_say=False)
        qt_says('press LEFT ARROW to repeat the story', to_say=False)
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
            qt_says(questions.pop(0))
            print("QUESTIONS LEFT: ", questions)
        else: done_questions = True #we press down arrow, but all the questions have been said already
            
#define state Evaluation
class Evaluation(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextStory', 'nextGoodbye'])

    def execute(self, userdata):
        global next_global_state
        global next_question
        global questions
        global done_questions
        global local_data
        questions = []
        q_ls = Listener(on_press = next_q)
        q_ls.start()
        
        questions = local_data.split("|")[2].splitlines()
        if questions:
            done_questions = False
            qt_says('Press the down arrow to go to the next question', to_say=False)
            
            # message = "Now that we have finished the story, it is time for your evaluation! How well did you understand the story?"
            translated = "Maintenant que nous avons terminé l'histoire, il est temps pour votre évaluation! Dans quelle mesure avez-vous bien compris l'histoire?"
            qt_says(translated)
            rospy.sleep(0.2)
            print(questions)
            while not done_questions: #wait for all questions to be said and discussed
                pass
            rospy.sleep(0.2)
            robot.showEmotion(sentiment.JOYFUL)
            # message = "Thank you for answering my questions!"
            translated = "Je vous remercie d'avoir répondu à mes questions!" 
            qt_says(translated)
            rospy.sleep(0.2)

        # questionStory ='Do you want to hear another story ?'
        # qt_says(ts.translate_text(questionStory, translator='google', from_language='en', to_language=language) )

        print('\n-----------------\n')
        qt_says('press LEFT ARROW to hear another story', to_say=False)
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
        robot.showEmotion(sentiment.JOYFUL)
        # message = "Thank you for your attention! I hope you learned a lot. See you next time!"
        translated = "Merci pour votre attention! J'espère que vous avez beaucoup appris. À la prochaine!"
        qt_says(translated)
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
        # loop = asyncio.get_event_loop()
        # loop.stop()
        # await loop.close()
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
    webbrowser.open_new_tab('index.html')
    config_language()
    outcome = sm.execute()
    t.join()
    
if __name__ == '__main__':
    print("STARTING QT MODULE")
    main()


