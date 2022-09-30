#!/bin/sh
sudo apt-get install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
arch=$(dpkg --print-architecture)
sudo add-apt-repository "deb [arch=$arch] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get install code

