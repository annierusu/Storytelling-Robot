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
robot=Robot() #Robot()
SPEECH_NEUTRAL=True

#For web module
local_data = None #data stored from response from server

#Finish the questions
end=False

#For sentence classification
classifier=Classifier()
AUTO_SPLIT=True

#Configure the language QT will speak in 
def config_language():
    speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    rospy.wait_for_service('/qt_robot/speech/config')
    status = speechConfig("fr-FR",0,100) 
    print("configed language")

#Makes QT say <message> with <speech> function
def qt_says(message, speech=robot.say_serv_lips):
    speech(message)

#Starts the question asking process, controlled by the web module
def begin_ask_questions():
    global end
    while(not end):
        local_data = server.await_response()
        
        if(local_data == "close"):
            end = True
            break

        answer = ai.answer_question(local_data)

        sentences_with_sentiment = classifier.classify(answer, AUTO_SPLIT)

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
    print("end of questioning")
    exit(0)

def main():
    server.start_thread()
    webbrowser.open_new_tab('index_questions.html')
    config_language() #NO ROBOT SUPPORT: comment this line
    begin_ask_questions()
    server.join_thread()

if __name__ == '__main__':
    main()