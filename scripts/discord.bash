#!/bin/bash

echo "################################################"
echo "Installing Discord..."

# Update package list
sudo apt-get update

# Install necessary dependencies
sudo apt-get install -y wget gdebi-core

# Download the latest Discord .deb package
wget https://discord.com/api/download?platform=linux&format=deb -O discord.deb

# Install the .deb package using gdebi to handle dependencies
sudo gdebi -n discord.deb

# Clean up
rm discord.deb

echo "Discord has been installed successfully."
echo "################################################"
