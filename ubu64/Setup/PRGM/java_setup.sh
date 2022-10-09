#!/bin/sh
#sudo apt-get install default-jre default-jdk
sudo wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb -O /tmp/jdk-19_linux-x64_bin.deb
sudo apt-get install /tmp/jdk-19_linux-x64_bin.deb
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1919 #Attaches java bin to system for terminal calls

mkdir -p /usr/local/apache-maven
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
sudo tar -xvf /tmp/apache-maven-3.8.6-bin.tar.gz -C /usr/local/apache-maven
echo "Copy the 4 lines below to add to bashrc file"
echo "............................................"
echo \
'
export M2_HOME=/usr/local/apache-maven/apache-maven-3.8.6
export M2=$M2_HOME/bin 
export PATH=$M2:$PATH
'
read x
sudo nano ~/.bashrc
source ~/.bashrc

read -p "Done" x
