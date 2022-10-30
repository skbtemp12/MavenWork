#!/bin/bash

# Version: 0.1
# Author: Sheikh Shakib Hossain for UIU Mars Rover

# Execute: ./ros_noetic_install.sh
# Note: Don't run the script with 'sudo' power
# Tested on Ubuntu 20.04 LTS on 30/10/2022 (Success rate: 100%)

# 1.0 Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';


# 1.1 Set up your keys
sudo apt install curl -y; # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# 1.2 Installation
sudo apt update;
sudo apt install ros-noetic-desktop-full -y;

# 1.3 Environment Setup
source /opt/ros/noetic/setup.bash;
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;

# 1.4 Dependency install
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y

# 1.5 Initialize rosdep
sudo rosdep init
rosdep update
