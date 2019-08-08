#!/bin/bash

# Conda and ROS are mutually exclusive due to incompatible
# python versions. Therefore they must be started one at time when used

# Set up conda environment
function start_conda() {
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/ignat/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0  ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/ignat/anaconda3/etc/profile.d/conda.sh"  ]; then
            . "/home/ignat/anaconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/ignat/anaconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<

}


# Set up ROS env
function start_ros() {
    source /opt/ros/kinetic/setup.bash
}


