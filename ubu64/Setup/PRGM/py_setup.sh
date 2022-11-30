#!/bin/sh
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.8 python3.8-venv
sudo apt-get install python3.10 python3.10-venv python3-pip
pip3 install numpy wheel packaging requests opt_einsum pandas matplotlib django virtualenv
pip3 install keras_preprocessing --no-deps
