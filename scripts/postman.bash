#!/bin/bash

echo "################################################"
echo "Installing Postman..."

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget tar

# Download the latest Postman tarball
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

# Create a directory for Postman
sudo mkdir -p /opt/postman

# Extract the tarball into /opt/postman
sudo tar -xzf postman.tar.gz -C /opt/postman --strip-components=1

# Create a symbolic link to the Postman executable
sudo ln -sf /opt/postman/Postman /usr/local/bin/postman

# Clean up
rm postman.tar.gz

echo "Postman has been installed successfully."
echo "################################################"
