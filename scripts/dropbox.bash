#!/bin/bash

echo "################################################"
echo "Installing Dropbox..."

# Update package list
sudo apt-get update

# Install necessary dependencies
sudo apt-get install -y wget gnupg

# Add Dropbox's GPG key
wget -O - https://linux.dropbox.com/gpg.html | sudo apt-key add -

# Add Dropbox's APT repository
echo "deb [arch=amd64] https://linux.dropbox.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/dropbox.list

# Update package list to include Dropbox's repository
sudo apt-get update

# Install Dropbox
sudo apt-get install -y dropbox

# Start Dropbox
dropbox start -i

echo "Dropbox has been installed successfully."
echo "################################################"
