#!/bin/bash

echo "################################################"
echo "Installing Warp Terminal..."

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget

# Download the latest Warp Terminal .deb package
wget https://warp.dev/download/latest/warp_amd64.deb -O warp.deb

# Install the .deb package using dpkg
sudo dpkg -i warp.deb

# Fix any dependency issues
sudo apt-get install -f

# Clean up
rm warp.deb

echo "Warp Terminal has been installed successfully."
echo "################################################"
