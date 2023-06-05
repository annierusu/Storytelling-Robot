import rospy
from qt_gesture_controller.srv import *
from std_msgs.msg import String
from enum import Enum

#Possible dance moves QT can perform (not exhaustive)
class dance_move(Enum):
    D11 = "Dance-1-1"
    D12 = "Dance-1-2"   
    D13 = "Dance-1-3"
    D14 = "Dance-1-4"
    D21 = "Dance-2-1"
    D22 = "Dance-2-2"
    D23 = "Dance-2-3" 
    D24 = "Dance-2-4"

#Dance sequence for QT robot
class Dance_Robot:

    def __init__(self) -> None:
        rospy.init_node('dance_node')
        rospy.loginfo("dance_node started!")
        # self.gesture_pub = rospy.Publisher('/qt_robot/gesture/play', String, queue_size=20)        
        self.gesture_serv = rospy.ServiceProxy('/qt_robot/gesture/play', gesture_play)
        rospy.sleep(1)
        
    #Service version of dance gestures
    def play_gesture_serv(self, gesture):
        rospy.loginfo("Dance service: " + gesture)

        if gesture == 'QT/hi':
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv(gesture)
        
        elif gesture == dance_move.D11:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-1-1")
        
        elif gesture == dance_move.D12:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-1-2")
        
        elif gesture == dance_move.D13:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-1-3")
        
        elif gesture == dance_move.D14:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-1-4")
        
        elif gesture == dance_move.D21:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-2-1")
        
        elif gesture == dance_move.D22:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-2-2")
       
        elif gesture == dance_move.D23:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-2-3")
        
        elif gesture == dance_move.D24:
            rospy.wait_for_service('/qt_robot/gesture/play') 
            self.gesture_serv("QT/Dance/Dance-2-4")
        
    #publisher version of dance gestures
    def play_gesture_pub(self, gesture):
        if gesture == 'QT/hi':
            self.gesture_pub.publish("QT/hi")
        elif gesture == dance_move.D11:
            self.gesture_pub.publish("QT/Dance/Dance-1-1")
        elif gesture == dance_move.D12:
            self.gesture_pub.publish("QT/Dance/Dance-1-2")
        elif gesture == dance_move.D13:
            self.gesture_pub.publish("QT/Dance/Dance-1-3")
        elif gesture == dance_move.D14:
            self.gesture_pub.publish("QT/Dance/Dance-1-4")
        elif gesture == dance_move.D21:
            self.gesture_pub.publish("QT/Dance/Dance-2-1")
        elif gesture == dance_move.D22:
            self.gesture_pub.publish("QT/Dance/Dance-2-2")
        elif gesture == dance_move.D23:
            self.gesture_pub.publish("QT/Dance/Dance-2-3")
        elif gesture == dance_move.D24:
            self.gesture_pub.publish("QT/Dance/Dance-2-4")
        rospy.loginfo("played gesture " + str(gesture))



