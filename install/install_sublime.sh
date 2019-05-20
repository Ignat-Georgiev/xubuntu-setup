#!/bin/bash

# first check if already installed
if ! [ $(dpkg-query -W -f='${Status}' sublime-text 2>/dev/null | grep -c    "ok installed") -eq 0   ];
then
    echo "Sublime already installed. Exitting..."
    exit 1
fi


wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -y -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

