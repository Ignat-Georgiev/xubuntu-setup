#!/bin/bash

printf "\nInstalling paper icons\n"

# first check if already installed
if ! [ $(dpkg-query -W -f='${Status}' paper-icon-theme 2>/dev/null | grep -c    "ok installed") -eq 0   ];
then
    echo "Paper icons already installed. Exitting..."
    exit 1
fi

sudo add-apt-repository -y ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
