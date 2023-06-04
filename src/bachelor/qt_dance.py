from pynput.keyboard import Key, Listener
import rospy
from qt_robot_interface.srv import *
import story_generation as ai
from robot_interaction import Robot
from mock_robot_interaction import Mock_Robot
from dance_robot import Dance_Robot
from dance_robot import feeling


robot = Dance_Robot()

gestures = [feeling.ANGRY, feeling.JOYFUL, feeling.DISGUSTED, feeling.AFRAID, feeling.JOYFUL, feeling.SURPRISED]
gesture_index = 0

def dance():
    # robot.playGesture('QT/hi')
    rospy.sleep(2)
    robot.playGesture(feeling.JOYFUL)
    rospy.sleep(7)
    robot.playGesture(feeling.SURPRISED)
    rospy.sleep(6)
    robot.playGesture(feeling.JOYFUL)
    rospy.sleep(7)
    robot.playGesture(feeling.ANGRY)
    # for i in range(len(gestures)):
    #     # if(i%2 == 0):
    #     #     robot.showEmotion(feeling.JOYFUL)
    #     # elif(i%3 == 0):
    #     #     robot.showEmotion(feeling.SURPRISED)
    #     robot.playGesture(gestures[i])
    #     rospy.sleep(4)

    rospy.spin()


if __name__ == '__main__':
    dance()
