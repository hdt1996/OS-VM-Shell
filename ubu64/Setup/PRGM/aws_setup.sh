#!/bin/bash
########################### AWS ELASTIC BEANSTALK ##########################

# AWS CLI
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
sudo unzip /tmp/awscliv2.zip
sudo /tmp/aws/install
sudo curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh #AWS INTEGR WITH DOCKER COMPOSE
sudo curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "/tmp/session-manager-plugin.deb"
sudo apt-get install /tmp/session-manager-plugin.deb

# AWS EB CLI
# Make sure to pip3 install virtualenv for python

git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git /home/$USER/Desktop/aws_eb
export PATH="$PATH:/home/$USER/.local/bin"
python3 /home/$USER/Desktop/aws_eb/scripts/ebcli_installer.py
echo 'export PATH="/home/$USER/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile && source ~/.bash_profile

# If python is unresolved by eb
#sudo ln -s python3.10 ./python


