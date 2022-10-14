#!/bin/sh
USER=$(echo "$USER")
#sudo snap install arduino 
#Source files in D drive for arduino (2.0+) 
sudo usermod -a -G dialout "$USER" #Serial data uses dialout group

sudo chmod 660 /dev/ttyS0 #Virtual box, we enable Serial Port 1, assign PORT address COM3
			  #or whatever COM port arduino is connected to
			  #Set host device with connect to Pipe(should be true as default)
			  #USB, WE NEED USB 2.0/3.0 at LEAST. ADD ARDUINO TO FILTER
#Assuming source file is sent to myshare

sudo su
#cp -r /home/$USER/myshare/arduino /usr/bin/arduino
#chown $USER:$USER /usr/bin/arduino
wget https://downloads.arduino.cc/arduino-1.8.13-linux64.tar.xz -O /tmp/arduino_install.tar.xz;
cd /tmp
tar xvf ./arduino_install.tar.xz
sudo mv ./arduino-1.8.13 /opt/
cd /opt/arduino-1.8.13
sudo ./install.sh
read -p "Proceed to make desktop shortcut using Admin's Create_Shortcut" x


