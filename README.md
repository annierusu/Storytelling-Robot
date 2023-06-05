# Storytelling-Robot
EPFL bachelor project spring 2023

QT is an expressive humanoid social robot developed by LuxAI. He is used to provide encouragement and motivation through storytelling to students. 

## How to use this code using Oracle VM VirtualBox: 

**Setting up the network:**

When not connected to the robot: use NAT network. Modifications in the code are required (Mock_Robot, see code for more details) 

When connected to the robot: if the robot has no wifi itself, use wifi dongle and use NAT on Adapter 1 (connect wifi to epfl network), Bridged adapter on Adapter 2 (TP-Link) (connect wifi2 to QT)

**Setting up ros and the robot:** (this assumes the ros tutorial was followed)

Edit the ~/.bash_aliases file to include the following lines: 

source /opt/ros/noetic/setup.bash

source ~/catkin_ws/devel/setup.bash

export ROS_IP=your IP found with ifconfig

export ROS_MASTER_URI=http//192.168.4.1:11311
  
export OEPNAI_API_KEY=<your OpenAI API key found on your OpenAI account> *this is required to use the story generation feature and the question activity*
