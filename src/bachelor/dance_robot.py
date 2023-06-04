import rospy
from qt_robot_interface.srv import *
from std_msgs.msg import String

from enum import Enum

class feeling(Enum):
  ANGRY = "anger"
  DISGUSTED = "disgust"
  AFRAID = "fear"
  JOYFUL = "joy"
  NEUTRAL = "neutral"
  SAD = "sadness"
  SURPRISED = "surprise"

class Dance_Robot:

    def __init__(self) -> None:
        rospy.init_node('story_node')
        rospy.loginfo("story_node started!")

        self.gesture_pub = rospy.Publisher('/qt_robot/gesture/play', String, queue_size=20)
        self.emotion_pub = rospy.Publisher('/qt_robot/emotion/show', String, queue_size=20)

        # self.gesture_serv = rospy.ServiceProxy()
        
        rospy.sleep(1)
        
    
    def showEmotion(self, emotion):
        if emotion == feeling.ANGRY:
            self.emotion_pub.publish("QT/neutral")
        elif emotion == feeling.DISGUSTED:
            self.emotion_pub.publish("QT/surprise")
        elif emotion == feeling.AFRAID:
            self.emotion_pub.publish("QT/afraid")
        elif emotion == feeling.JOYFUL:
            self.emotion_pub.publish("QT/happy")
        #elif emotion == sentiment.NEUTRAL:
            #emotion_pub.publish("QT/neutral")
        elif emotion == feeling.SAD:
            self.emotion_pub.publish("QT/sad")
        elif emotion == feeling.SURPRISED:
            self.emotion_pub.publish("QT/surprise")

        rospy.loginfo("showed emotion: " + str(emotion))

    def playGesture(self, gesture):
        if gesture == feeling.ANGRY:
            self.gesture_pub.publish("QT/emotions/angry")
        elif gesture == feeling.DISGUSTED:
            self.gesture_pub.publish("QT/emotions/disgusted")
        elif gesture == feeling.AFRAID:
            self.gesture_pub.publish("QT/emotions/afraid")
        elif gesture == feeling.JOYFUL:
            self.gesture_pub.publish("QT/emotions/happy")
        #elif gesture == sentiment.NEUTRAL:
            #gesture_pub.publish("QT/neutral")
        elif gesture == feeling.SAD:
            self.gesture_pub.publish("QT/emotions/sad")
        elif gesture == feeling.SURPRISED:
            self.gesture_pub.publish("QT/emotions/surprised")
        elif gesture == 'QT/hi':
            self.gesture_pub.publish("QT/hi")

        rospy.loginfo("played gesture " + str(gesture))



