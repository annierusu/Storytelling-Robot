# Storytelling-Robot
EPFL bachelor project spring 2023

QT is an expressive humanoid social robot developed by LuxAI. He is used to provide encouragement and motivation through storytelling to students. 

## How to use this project on Oracle VM VirtualBox: 

**Setting up the network of the VM:**  
When not connected to the robot: use NAT network. 
>Modifications in the code are required: see NO ROBOT SUPPORT comments for more details 

When connected to the robot: if the robot has no wifi itself, use wifi dongle and use NAT on Adapter 1 (connect wifi to epfl network), Bridged adapter on Adapter 2 (TP-Link) (connect wifi2 to QT)

**Setting up ros and the robot:** (the ros tutorial should have already been done)  
Edit the ~/.bash_aliases file to include the following lines: 

>source /opt/ros/noetic/setup.bash  
source ~/catkin_ws/devel/setup.bash  
export ROS_IP=your IP found with ifconfig  
export ROS_MASTER_URI=http//192.168.4.1:11311  
export OPENAI_API_KEY=your OpenAI API key found on your OpenAI account  

*Note: having an OpenAI API key is required to use the story generation feature and the question activity.  
The ROS_IP will be different whether you are on a single connection, or multiple connections.*

**Setting up the required libraries:**  

The following libraries should be installed (versions may vary): 
>genpy==0.6.15  
keyboard==0.13.5  
openai==0.27.4  
pynput==1.7.6  
rospy==1.16.0  
smach==2.5.1  
smach_ros==2.5.1  
translators==5.6.1  
transformers==4.27.1   
websockets==11.0.1  

## Running the programs:  
There are 4 runnable programs: 
>python3 state_machine.py  

>python3 qt_encouragement.py  

>python3 qt_questions.py

>python3 qt_dance.py



