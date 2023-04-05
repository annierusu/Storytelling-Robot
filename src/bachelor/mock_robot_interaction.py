
from sentiment_analysis import sentiment

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
        
    
    def showEmotion(self, emotion):
        print("showed emotion: " + str(emotion))

    def playGesture(self, gesture):
        print("played gesture " + str(gesture))

    def say(self, text):
        #self.speech_pub.publish(text)
        print("Said: " + text)

    def say_serv(self, text):
        print("Speech service saying: " + text)
        #rospy.wait_for_service('/qt_robot/speech/say') 
        #print(text)

    def say_serv_lips(self, text):
        print("Speech service saying with lip-sync: " + text)
        #rospy.wait_for_service('/qt_robot/behavior/talkText')
        #print(text)