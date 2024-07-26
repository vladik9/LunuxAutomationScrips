#!/bin/bash

echo "################################################"
echo "Installing FileZilla..."

# Update package list
sudo apt-get update

# Install FileZilla from the official Ubuntu repository
sudo apt-get install -y filezilla

echo "FileZilla has been installed successfully."
echo "################################################"
