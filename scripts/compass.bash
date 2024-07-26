#!/bin/bash

echo "################################################"
echo "Installing MongoDB Compass..."

# Update package list
sudo apt-get update

# Install necessary dependencies
sudo apt-get install -y wget gdebi-core

# Define the URL for the latest MongoDB Compass .deb package
COMPASS_URL="https://downloads.mongodb.com/compass/mongodb-compass_1.32.1_amd64.deb"

# Download the latest MongoDB Compass .deb package
wget $COMPASS_URL -O mongodb-compass.deb

# Install the .deb package using gdebi to handle dependencies
sudo gdebi -n mongodb-compass.deb

# Clean up
rm mongodb-compass.deb

echo "MongoDB Compass has been installed successfully."
echo "################################################"
