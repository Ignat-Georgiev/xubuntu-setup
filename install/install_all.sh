#!/bin/bash
if [ "$(id -u)" != "0"  ]; then
    echo "Sorry, you are not root. Please use sudo with this script"
    exit 1
fi

apt install -y blender cifs-utils clipit calibre freecad handbrake redshift-gtk openvpn easy-rsa network-manager-openvpn-gnome kazam jstest-gtk meshlab pinta remmina synergy thunderbird nautilus vim xrdp vino gnome-tweak-tool pdftk

# install from other scripts
./install_chrome.sh
./install_eigen.sh
./install_paper_icons.sh
./install_skype.sh
./install_spotify.sh
./install_sublime.sh
