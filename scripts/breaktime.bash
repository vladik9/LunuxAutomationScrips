#!/bin/bash

echo "################################################"
echo "Installing BreakTime..."

# Update package list
sudo apt-get update

# Install necessary dependencies
sudo apt-get install -y wget gdebi-core

# Define the URL for the latest BreakTime .deb package
BREAKTIME_URL="https://github.com/jamesdorrington/BreakTime/releases/latest/download/breaktime_amd64.deb"

# Download the latest BreakTime .deb package
wget $BREAKTIME_URL -O breaktime.deb

# Install the .deb package using gdebi to handle dependencies
sudo gdebi -n breaktime.deb

# Clean up
rm breaktime.deb

echo "BreakTime has been installed successfully."
echo "################################################"
