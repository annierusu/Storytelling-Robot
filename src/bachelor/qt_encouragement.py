import rospy
from qt_robot_interface.srv import *
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
local_data=None #data stored from response from server

#End of questions
end=False

#For sentence classification
AUTO_SPLIT=True
classifier=Classifier()

#For encouragments
good_index=0
try_again_index=0

good_job = ["Bravo, c'est un super, travail! Continue comme ça!", 
            "Bien joué! Tu as vraiment fait du bon travail et cela se voit!", 
            "Bien fait! Tu as mis beaucoup d'efforts et cela se voit!", 
            "Super travail ! Tu as vraiment réussi, à accomplir cette tâche, de manière exceptionnelle!", 
            "Tu as fait un travail remarquable! Ta persévérance et ta détermination, ont porté leurs fruits! Continue à te surpasser!", 
            "Tu peux être fier de toi ! Ton travail est de grande qualité !"]
try_again = ["Tu peux le faire!", 
             "Continue à,faire, un effort, et tu verras des progrès!",
             "Tu vas, y arriver!", 
             "Ne t'inquiète pas! Essaye encore!", 
             "Ne te décourage pas!"]

#Configure the language QT will speak in 
def config_language():
    speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    rospy.wait_for_service('/qt_robot/speech/config')
    status = speechConfig("fr-FR",0,100)
    print("configed")

#Makes QT say <message> with <speech> function
def qt_says(message, speech=robot.say_serv_lips):
    speech(message)
   
enc_array =[]
enc_index = 0

#Starts the encouragments, controled by the web module
def begin_encouragement():
    global good_index
    global try_again_index
    global end 
    global enc_array
    global enc_index

    while(not end):
        local_data = server.await_response()
        
        if(local_data == "close"):
            end = True
            break

        if(int(local_data) == 1):
            enc_array = try_again
            enc_index = try_again_index
            try_again_index = (try_again_index + 1) % len(try_again) #allows infinite loop of finite list of encouragments  
        else:
            enc_array = good_job
            enc_index = good_index
            good_index = (good_index + 1) % len(good_job)
        
        enc = classifier.classify(enc_array[enc_index], AUTO_SPLIT)
        for sentence in enc: 
            s = sentiment(enc[sentence])

            if(SPEECH_NEUTRAL):
                qt_says(sentence)
                rospy.sleep(0.2)
            else:
                if(s == sentiment.NEUTRAL):
                    qt_says(sentence)
                else: 
                    robot.showEmotion(s)
                    robot.playGesture(s)
                    qt_says(sentence, speech=robot.say_serv) #speak without lip sync as showing emotion 
                rospy.sleep(0.2)

#Launch the encouragment activity
def main():
    server.start_thread()
    webbrowser.open_new_tab('index_encouragement.html')
    config_language() #NO ROBOT SUPPORT: comment this line
    begin_encouragement()
    server.join_thread()

if __name__ == '__main__':
    main()