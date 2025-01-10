#!/bin/bash
echo "################################################"
echo "Installing Python..."
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.13
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.13
echo "Pip version:"
pip3.13 --version
echo "Python version:"
python3.13 --version
echo "Python has been installed successfully."
echo "################################################"
