import rospy
from mock_robot_interaction import Mock_Robot
from dance_robot import Dance_Robot
from dance_robot import dance_move as dm

#QT 
#NO ROBOT SUPPORT: Mock_Robot()
dance_robot = Dance_Robot() #Robot()

dance_moves = [dm.D11, dm.D12, dm.D13, dm.D14, dm.D21, dm.D22, dm.D23, dm.D24]

#Have QT perform a sequence of dance moves. NOTE: If publisher version is being used, a greater time is needed between the gestures (line 19)
def dance():
    dance_robot.play_gesture_serv('QT/hi') 
    rospy.sleep(0.1)
    
    for dance in dance_moves:
        dance_robot.play_gesture_serv(dance)
        rospy.sleep(0.1)
    
    rospy.spin()

if __name__ == '__main__':
    dance()
