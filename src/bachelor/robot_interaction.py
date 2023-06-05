import rospy
from qt_robot_interface.srv import *
from std_msgs.msg import String

from sentiment_analysis import sentiment

#This class represents QT robot. It is used to control QT's speech, gestures, and emotions.
class Robot:

    def __init__(self) -> None:
        rospy.init_node('story_node')
        rospy.loginfo("story_node started!")

        self.speech_pub = rospy.Publisher('/qt_robot/speech/say', String, queue_size=10)
        self.gesture_pub = rospy.Publisher('/qt_robot/gesture/play', String, queue_size=20)
        self.emotion_pub = rospy.Publisher('/qt_robot/emotion/show', String, queue_size=20)

        self.speech_serv = rospy.ServiceProxy('/qt_robot/speech/say', speech_say)
        self.speech_serv_lips = rospy.ServiceProxy('/qt_robot/behavior/talkText', behavior_talk_text)
        
        rospy.sleep(3)
        
    #Show a given emotion on QT's face (publisher)
    def showEmotion(self, emotion):
        if emotion == sentiment.ANGRY:
            self.emotion_pub.publish("QT/neutral")
        elif emotion == sentiment.DISGUSTED:
            self.emotion_pub.publish("QT/surprise")
        elif emotion == sentiment.AFRAID:
            self.emotion_pub.publish("QT/afraid")
        elif emotion == sentiment.JOYFUL:
            self.emotion_pub.publish("QT/happy")
        elif emotion == sentiment.SAD:
            self.emotion_pub.publish("QT/sad")
        elif emotion == sentiment.SURPRISED:
            self.emotion_pub.publish("QT/surprise")

        rospy.loginfo("Showed emotion: " + str(emotion))
    
    #Play a given gesture (publisher)
    def playGesture(self, gesture):
        if gesture == sentiment.ANGRY:
            self.gesture_pub.publish("QT/emotions/angry")
        elif gesture == sentiment.DISGUSTED:
            self.gesture_pub.publish("QT/emotions/disgusted")
        elif gesture == sentiment.AFRAID:
            self.gesture_pub.publish("QT/emotions/afraid")
        elif gesture == sentiment.JOYFUL:
            self.gesture_pub.publish("QT/emotions/happy")
        elif gesture == sentiment.SAD:
            self.gesture_pub.publish("QT/emotions/sad")
        elif gesture == sentiment.SURPRISED:
            self.gesture_pub.publish("QT/emotions/surprised")
        elif gesture == 'QT/hi':
            self.gesture_pub.publish("QT/hi")

        rospy.loginfo("Played gesture " + str(gesture))
   
    #Say a given text (publisher)
    def say(self, text):
        self.speech_pub.publish(text)
        rospy.loginfo("Said: " + text)
    
    #Say a given text (service)
    def say_serv(self, text):
        rospy.loginfo("Speech service saying: " + text)
        rospy.wait_for_service('/qt_robot/speech/say') 
        rospy.wait_for_service('/qt_robot/behavior/talkText') 
        self.speech_serv(text)
   
    #Say a given text with lip-sync (service)
    def say_serv_lips(self, text):
        rospy.loginfo("Speech service saying with lip-sync: " + text)
        rospy.wait_for_service('/qt_robot/behavior/talkText')
        rospy.wait_for_service('/qt_robot/speech/say') 
        self.speech_serv_lips(text)
