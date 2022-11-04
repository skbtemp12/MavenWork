#!/bin/bash
# Author: Sheikh Shakib Hossain
# Version: 0.1 ( Not Tested )


# 1.1 Install rosserial and requirements
sudo apt update;
sudo apt install git ros-noetic-rosserial ros-noetic-rosserial-python ros-noetic-rosserial-arduino -y;

# 1.2 Installing from Source onto the ROS workstation
cd ~/catkin_ws/src
git clone https://github.com/ros-drivers/rosserial.git

cd .. # now we're inside ~/catkin_ws/
catkin_make;
catkin_make install;

# 1.3 Install ros_lib into the Arduino Environment 
cd ~/Arduino/libraries/ # For arduino 1.8.16
rm -rf ros_lib
rosrun rosserial_arduino make_libraries.py .

# 1.4 Giving the port ACM0 read, write, executable power
sudo usermod -a -G dialout $USER
sudo chmod 777 /dev/ttyACM0

exit
