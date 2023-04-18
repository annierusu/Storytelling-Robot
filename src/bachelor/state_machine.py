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


global_data = None
global_data_received = False
local_data = None
lock = threading.Lock()
t = None


#for the sentiment classifier
AUTO_SPLIT = True 
classifier = Classifier()
#NO ROBOT SUPPORT: Mock_Robot() 
robot = Mock_Robot() #Mock_Robot()

#For the gestures
stateIndex = 0
state = ['Greetings', 'Storytelling', 'Evaluation', 'Goodbye']

chosen_language = -1
language = ''
next_global_state = ''
name = 'X'

#outputs from the web module
questions = []
story = ''
level_ai = ''

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
#speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
#rospy.wait_for_service('/qt_robot/speech/config')

if chosen_language == 1:
    language = 'de'
    #status = speechConfig("de-DE",0,100) #NO ROBOT SUPPORT: comment this line
elif chosen_language == 2:
    language = 'fr'
    #status = speechConfig("fr-FR",0,100) #NO ROBOT SUPPORT: comment this line
elif chosen_language == 0: 
    language = 'en'
    #status = speechConfig("en-US",0,100) #NO ROBOT SUPPORT: comment this line



#translate the given message to the language chosen by the user at the start, specifying if QT will say it or not
def translation(message, to_Say):
    if language  != 'en':
        content = ts.google(message, from_language='en', to_language=language) 
        print(content, "\n")
        if to_Say :
           robot.say_serv_lips(message) 
    else:
        print(message, "\n")
        if to_Say: 
            robot.say_serv_lips(message)


#This is the first state of the state machine. It begins the interaction with the robot. 
class Greetings(smach.State):

    def __init__(self):
        smach.State.__init__(self, outcomes=['nextContent'])

    def execute(self, userdata):
        global name
        first_question = "Please write your name here :" #convert to website, do we really need?
        translation(first_question, False)
        name = input()
        try:
            greetings = "Hi!"
            #greetings = "Hello {} ! My name is Q T and we are going to learn new things today. Follow the instructions written on the screen !".format(name)
            translation(greetings, True)
        except rospy.ROSInterruptException:
            pass

        instruction = 'Press SHIFT to start the course' #convert to website
        translation(instruction, False)

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
        #global local_data

        global global_data
        print("Storytelling")
        #self.get_server_answer()
        ai_level = 0#local_data.split("|")[0]
        story_prompt = "hello world"#local_data.split("|")[1]
        content = story_prompt

        #wait for the server to send the data
        help = await_response()
        print(help)

        #TODO: stupid -> figure it out

        if(ai_level == 1):
            content = "Make the following text into a story: " + story_prompt
        elif(ai_level == 2):
            content = "Write a story about " + story_prompt + ", taking it step by step."
        content = ai.generate_fake_response(content)


        with open('story2', 'r') as st:
            content = st.read()
            sentences_with_sentiment = classifier.classify(content, AUTO_SPLIT)

            last_sentiment = ()

            for sentence in sentences_with_sentiment:
                s = sentiment(sentences_with_sentiment[sentence])

                last_sentiment = s
                robot.showEmotion(s)
                robot.playGesture(s)
                translation(sentence, True)

        print('\n-----------------\n')
        translation('press SHIFT to go to evaluation', False)
        translation('press ALT to repeat the story', False)
        translation('press ESC to say goodbye', False)
        print('-----------------\n')
        
        next_global_state = ''
        while next_global_state == '':
            pass 
        return next_global_state



def next_q(key):
    # if(key == Key.down):
    #     if(len(questions)>0):
    #         translation(questions[0])
    #         questions.pop(0)
    print("down arrow pressed")


#define state Evaluation
class Evaluation(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextStory', 'nextGoodbye'])

    def execute(self, userdata):
        global speechSay_pub
        global next_global_state
        global next_question
        global questions
        q_ls = Listener(on_press = next_q)
        q_ls.start()

        #open file containing questions and separate them (each question is on a new line)
        questions = open("questions1").read().splitlines() 
        
        translation('It is time for your evaluation! How well did you understand the story? Press the down arrow key for the next question', True)

        #keys being pressed  

        translation('Thank you for completing the evaluation !', True)

        print('\n-----------------\n')
        translation('Do you want to hear another story ?', True)
        translation('press SHIFT to hear another story', False)
        translation('press ESC to say goodbye', False)
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
        translation('Thank you for your attention {}. See you next time!'.format(name), True)
        return 'finishState'

def await_response():
    global lock
    global global_data
    global global_data_received

    while True: 
        lock.acquire()
        if global_data_received:
            print("data received")
            global_data_received = False
            lock.release()
            return global_data
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


