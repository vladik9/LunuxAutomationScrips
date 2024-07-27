#!/bin/bash

echo "################################################"
echo "Installing Python..."

# Update package list
sudo apt-get update

# Install Python 3 and pip
sudo apt-get install -y python3 python3-pip python3-venv

# Optionally, install additional development tools
sudo apt-get install -y build-essential

# Verify the installation
echo "Python version:"
python3 --version

echo "Pip version:"
pip3 --version

echo "Python has been installed successfully."
echo "################################################"
