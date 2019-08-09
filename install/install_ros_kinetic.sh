#!/bin/bash

# from http://wiki.ros.org/kinetic/Installation/Ubuntu

printf "\nInstalling ROS Kinetic\n"

# first check if already installed
if ! [ $(dpkg-query -W -f='${Status}' ros-kinetic-desktop-full 2>/dev/null | grep -c "ok installed") -eq 0  ];
then
    echo "ROS Kinetic already installed. Exitting..."
    exit 1
fi

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
