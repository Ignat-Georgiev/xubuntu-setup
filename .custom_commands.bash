#!/bin/bash

# Conda and ROS are mutually exclusive due to incompatible
# python versions. Therefore they must be started one at time when used

# Set up conda environment
function start_conda() {
    export PATH="/home/ignat/anaconda3/bin:$PATH"
}


# Set up ROS env
function start_ros() {
    source /opt/ros/kinetic/setup.bash
}


