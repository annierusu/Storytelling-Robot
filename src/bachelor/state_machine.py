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
#from mock_robot_interaction import Mock_Robot

#for the sentiment classifier
AUTO_SPLIT = True 
classifier = Classifier()
robot = Robot(); #Mock_Robot()

#For the gestures
stateIndex = 0
state = ['Greetings', 'Storytelling', 'Evaluation', 'Goodbye']

chosen_language = -1
language = ''
next_global_state = ''
name = 'X'

while chosen_language != 0 and chosen_language != 1 and chosen_language != 2:
    print("\nPlease choose your preferred language:\nType 0 for english\nType 1 for german\nType 2 for french\n") #convert to website 
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

#initiate node
#rospy.init_node('smach_example_state_machine')

#Create service to change the language
speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
rospy.wait_for_service('/qt_robot/speech/config')

if chosen_language == 1:
    language = 'de'
    status = speechConfig("de-DE",0,100)
elif chosen_language == 2:
    language = 'fr'
    status = speechConfig("fr-FR",0,100)
elif chosen_language == 0: 
    language = 'en'
    status = speechConfig("en-US",0,100)
    
#Create publisher for the speeches
#speechSay_pub = rospy.Publisher('/qt_robot/speech/say', String, queue_size=10)
#speechSay_pub = rospy.Publisher('/qt_robot/behavior/talkText', String, queue_size = 10)
#wtime_begin = rospy.get_time()
#while (speechSay_pub.get_num_connections() == 0 ):
    #rospy.loginfo("waiting for subscriber connections")
 #   if rospy.get_time() - wtime_begin > 5.0:
  #      rospy.logerr("Timeout while waiting for subscribers connection!")
  #      sys.exit()
   # rospy.sleep(1)

#translate the given message to the language chosen by the user at the start, specifying if QT will say it or not
def translation(message, to_Say):
    if language  != 'en':
        content = ts.google(message, from_language='en', to_language=language) 
        print(content, "\n")
        if to_Say :
           #speechSay_pub.publish(content)
           robot.say_serv_lips(message)
    else:
        print(message, "\n")
        if to_Say: 
            #speechSay_pub.publish(message)
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
        
        #Read the story
        global speechSay_pub
        global next_global_state

        #add line to prompt user to write story in website, dictate level of ai etc. 
        
        path = str(os.path.join(Path.home(), "Downloads/ai.txt"))
 
        with open(path,"r") as f:
            print(f.read())
        ai_level = 0 #0: no ai, 1: ai fix, 2: full ai

        with open('story1', 'r') as f: #will be just story
            content = f.read()
            if(ai_level == 1):
                content = "Make the following text into a story: " + content
            elif(ai_level == 1):
                content = "Write a story about " + content + ", taking it step by step."
            translation(ai.generate_fake_response(content), True)



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

questions = ''

def next_q(key):
    if(key == Key.down):
        if(len(questions)>0):
            translation(questions[0])
            questions.pop(0)


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
        global name
        global speechSay_pub
        translation('Thank you for your attention {}. See you next time!'.format(name), True)
        return 'finishState'
        

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
    outcome = sm.execute()
    
if __name__ == '__main__':
    main()