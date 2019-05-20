#!/bin/bash

# first check if already installed
if ! [ $(dpkg-query -W -f='${Status}' code 2>/dev/null | grep -c "ok installed") -eq 0  ];
then
    echo "VSCode already installed. Exitting..."
    exit 1
fi

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

