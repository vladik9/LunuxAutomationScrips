#!/bin/bash

echo "################################################"
echo "Installing BreakTime..."

# Update package list
sudo apt-get update

# Go to deb folder
cd ../deb
# Install deb file
sudo dpkg -i BreakTimer.deb

 #Move back to scripts folder
cd ../scripts

echo "BreakTime has been installed successfully."
echo "################################################"
