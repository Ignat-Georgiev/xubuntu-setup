#!/bin/bash

# first check if already installed
if ! [ $(dpkg-query -W -f='${Status}' skypeforlinux 2>/dev/null | grep -c    "ok installed") -eq 0   ];
then
    echo "Skype already installed. Exitting..."
    exit 1
fi


sudo apt install apt-transport-https
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update
sudo apt install skypeforlinux
