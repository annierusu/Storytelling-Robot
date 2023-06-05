
#This class is used to mock the Robot class when not connected to the actual robot. 
class Mock_Robot:

    def __init__(self) -> None:
        print('story_node')
        print("story_node started!")

        """ self.speech_pub = rospy.Publisher('/qt_robot/speech/say', String, queue_size=10)
        self.gesture_pub = rospy.Publisher('/qt_robot/gesture/play', String, queue_size=10)
        self.emotion_pub = rospy.Publisher('/qt_robot/emotion/show', String, queue_size=10)

        self.speech_serv = rospy.ServiceProxy('/qt_robot/speech/say', speech_say)
        self.speech_serv_lips = rospy.ServiceProxy('/qt_robot/behavior/talkText', behavior_talk_text)
        rospy.sleep(3) """
        
    #Show a given emotion on QT's face (publisher)
    def showEmotion(self, emotion):
        print("Showed emotion: " + str(emotion))
    
    #Play a given gesture (publisher)
    def playGesture(self, gesture):
        print("Played gesture " + str(gesture))

    #Say a given text (publisher)
    def say(self, text):
        #self.speech_pub.publish(text)
        print("Said: " + text)
    
    #Say a given text (service)
    def say_serv(self, text):
        print("Speech service saying: " + text)
        #rospy.wait_for_service('/qt_robot/speech/say') 
        #print(text)
    
    #Say a given text with lip-sync (service)
    def say_serv_lips(self, text):
        print("Speech service saying with lip-sync: " + text)
        #rospy.wait_for_service('/qt_robot/behavior/talkText')
        #print(text)
