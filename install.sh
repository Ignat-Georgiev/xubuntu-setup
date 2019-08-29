#!/bin/bash

# check for sudo rights
if [ "$(id -u)" != "0"  ]; then
    echo "Sorry, you are not root. Please use sudo with this script"
    exit 1
fi

printf "\n## installing linux packages ##\n"

apt install -y cifs-utils clipit calibre freecad handbrake redshift-gtk openvpn easy-rsa network-manager-openvpn-gnome kazam jstest-gtk meshlab pinta remmina synergy thunderbird nautilus vim xrdp vino gnome-tweak-tool pdftk terminator

sudo snap install mailspring odrive-unoff


printf "\n## Installing 3rd party\n"""
install/install_chrome.sh
install/install_eigen.sh
install/install_paper_icons.sh
install/install_spotify.sh
install/install_ros_kinetic.sh
install/install_vscode.sh


printf "\n## Copying config files##\n"

cp -r .bashrc .vimrc .custom_commands.bash .config scripts ~/
sudo cp 70-synaptics.conf /usr/share/X11/xorg.conf.d/

printf "\n## Finished install ##\n"
