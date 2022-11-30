#!/bin/sh

#############################################################################################################################
#-------------------- Using resolvconf for DNS servers (Not going to use anymore) ---------
#sudo apt-get install resolvconf
#sudo systemctl status resolvconf.service
#sudo nano /etc/resolvconf/resolv.conf.d/head
#sudo systemctl restart resolvconf.service
#sudo systemctl restart systemd-resolved.service

##################################################### Minimalistic way of setting DNS Servers (Preferred) ####################
sudo rm /etc/resolv.conf #Remove original with symlink and systemd permissions
sudo cp ./configs/resolv.conf /etc/resolv.conf

sudo apt-get update && time sudo apt-get dist-upgrade

