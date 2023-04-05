#!/usr/bin/env python3

from distutils.util import execute
from unicodedata import name
import smach
import smach_ros
import rospy
import keyboard

#define state Greetings
class Greetings(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextContent'])

    def execute(self, userdata):
        rospy.loginfo('Executing state Greetings')
        keyboard.wait("a")
        return 'nextContent'
        
#define state Storytelling
class Storytelling(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['nextGoodbye'])

    def execute(self, userdata):
        rospy.loginfo('Executing state Storytelling')
        keyboard.wait("b")
        return 'nextGoodbye'

#define state Goodbye
class Goodbye(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['startAgain'])

    def execute(self, userdata):
        rospy.loginfo('Executing state Goodbye')
        keyboard.wait("c")
        return 'startAgain'


def main():
    rospy.init_node('smach_example_state_machine')

    #create a smach state machine
    sm = smach.StateMachine(outcomes=[])

    #open the container
    with sm:
        #Add states to the container
        smach.StateMachine.add('GREETINGS', Greetings(), transitions={
            'nextContent':'STORYTELLING',
        })
        smach.StateMachine.add('STORYTELLING', Storytelling(), transitions={
            'nextGoodbye':'GOODBYE'
        })
        smach.StateMachine.add('GOODBYE', Goodbye(), transitions={
            'startAgain':'GREETINGS'
        })

    #Create and start the introspection server
    sis = smach_ros.IntrospectionServer('server_name', sm, '/SM_ROOT')
    sis.start()

    #Execute smach plan
    outcome = sm.execute()

    #wait for ctrl+c to stop the application
    rospy.spin()
    sis.stop()

if __name__ == '__main__':
    main()
