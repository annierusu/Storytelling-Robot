#!/usr/bin/env python3
from pynput.keyboard import Key, Listener
import smach
import rospy
from qt_robot_interface.srv import *
import story_generation as ai
from sentiment_analysis import Classifier, sentiment 
from robot_interaction import Robot
from mock_robot_interaction import Mock_Robot
import webbrowser
import server

#QT 
#NO ROBOT SUPPORT: Mock_Robot()
robot = Mock_Robot() #Robot()
SPEECH_NEUTRAL = True

#For web module
local_data = None 

#For evaluation state
done_questions = True
questions = []

#For the sentiment classifier
AUTO_SPLIT = True 
classifier = Classifier()

#For the gestures
state_index = 0
state = ['Greetings', 'Storytelling', 'Evaluation', 'Goodbye']

chosen_language = -1
language = ''
next_global_state = ''


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
ls = Listener(on_press = key_transition)
ls.start()

#Configure the language of the robot, based on what the user chose in the website
def config_language():
    global chosen_language
    global language

    #NO ROBOT SUPPORT: comment the two lines below
    # speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    # rospy.wait_for_service('/qt_robot/speech/config')

    chosen_language = int(server.await_response())
    if chosen_language == 2:
        language = 'de'
        # status = speechConfig("de-DE",0,100) #NO ROBOT SUPPORT: comment this line
    elif chosen_language == 1:
        language = 'fr'
        # status = speechConfig("fr-FR",0,100) #NO ROBOT SUPPORT: comment this line
    elif chosen_language == 0: 
        language = 'en'
        # status = speechConfig("en-US",0,100) #NO ROBOT SUPPORT: comment this line
    print("Language chosen: ", language)
    print()


#Makes QT say <message> with <speech> function
def qt_says(message, to_say = True, speech=robot.say_serv_lips):
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
        global language

        robot.playGesture('QT/hi')
        greetings = "Hi! My name is Q T and we are going to learn new things today, are you ready to go on an adventure?"
        
        # greetings = "Salut! Je m'appelle Q T et nous allons apprendre de nouvelles choses aujourd'hui, êtes-vous prêt à partir à l'aventure ?"
        
        qt_says(ai.translate(greetings, language_to=language))
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
        global language
        
        local_data = server.await_response()
        print("LOCAL DATA RECIEVED: ", local_data)
        
        if(local_data == 'close'):
            next_global_state = 'nextGoodbye'
            return next_global_state

        inputs = local_data.split("|")

        ai_level = int(inputs[0])
        story_prompt = inputs[1]
        story_length = int(inputs[3])

        level_1_prompt = "Make the following text into a story, understandable by a 5 year old, using characters and dialogue: "
        level_2_prompt_a = "Write a story about "
        level_2_prompt_b = ", understandable by a 5 year old, using characters and dialogue, taking it step by step."
        
        if(ai_level == 1):
            story_prompt = ai.generate_response(ai.translate(level_1_prompt, language_to = language)+ story_prompt, max_tokens=story_length)
        elif(ai_level == 2):
            story_prompt = ai.generate_response(ai.translate(level_2_prompt_a, language_to=language)+ story_prompt + ai.translate(level_2_prompt_b, language_to = language), max_tokens=story_length)

        sentences_with_sentiment = classifier.classify(story_prompt, AUTO_SPLIT)

        for sentence in sentences_with_sentiment:
            s = sentiment(sentences_with_sentiment[sentence])
            if(SPEECH_NEUTRAL):
                qt_says(sentence)
                rospy.sleep(0.2)
            else: 
                if s == sentiment.NEUTRAL:
                    qt_says(sentence) #speak with lip sync
                    rospy.sleep(0.2)
                else: 
                    robot.showEmotion(s)
                    robot.playGesture(s)
                    qt_says(sentence, speech=robot.say_serv) #speak without lip sync as showing emotion 
                    rospy.sleep(0.2)
        print('\n-----------------\n')
        qt_says("press RIGHT ARROW to go to evaluation", to_say=False)
        qt_says("press LEFT ARROW to repeat the story", to_say=False)
        qt_says("press ESC to say goodbye", to_say=False)
        print('-----------------\n')
        
        next_global_state = ''
        while next_global_state == '':
            pass 
        return next_global_state

#Keyboard controls for questions asked by QT
def next_q(key):
    global questions
    global done_questions
    if(key == Key.down):
        print(len(questions))
        if(len(questions) > 0):
            qt_says(questions.pop(0))
            print("QUESTIONS LEFT: ", questions)
        else: 
            done_questions = True #Down arrow pressed, but all the questions have been said already
            
q_ls = Listener(on_press = next_q)            
#Define state Evaluation
class Evaluation(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextStory', 'nextGoodbye'])

    def execute(self, userdata):
        global next_global_state
        global questions
        global done_questions
        global local_data
        global q_ls
        questions = []
        
        q_ls = Listener(on_press = next_q)
        q_ls.start()
        
        questions = local_data.split("|")[2].splitlines()
        if questions:
            done_questions = False
            qt_says('Press the down arrow to go to the next question', to_say=False)
            
            message = "Now that we have finished the story, it is time for your evaluation! How well did you understand the story?"
            # translated = "Maintenant que nous avons terminé l'histoire, il est temps pour votre évaluation! Dans quelle mesure avez-vous bien compris l'histoire?"
            qt_says(ai.translate(message, language_to=language))
            
            rospy.sleep(0.2)
            
            print(questions)
            
            while not done_questions: #wait for all questions to be said and discussed
                pass
            q_ls.stop()

            rospy.sleep(0.2)

            robot.showEmotion(sentiment.JOYFUL)
            message = "Thank you for answering my questions!"
            # translated = "Je vous remercie d'avoir répondu à mes questions!" 
            qt_says(ai.translate(message, language_to=language))
            
            rospy.sleep(0.2)

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
        message = "Thank you for your attention! I hope you learned a lot. See you next time!"
        # translated = "Merci pour votre attention! J'espère que vous avez beaucoup appris. À la prochaine!"
        qt_says(ai.translate(message, language_to=language))
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
    server.start_thread()
    webbrowser.open_new_tab('index.html')
    config_language()
    outcome = sm.execute()
    server.join_thread()
    
if __name__ == '__main__':
    print("STARTING QT MODULE")
    main()


