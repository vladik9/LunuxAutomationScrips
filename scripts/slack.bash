#!/bin/bash

echo "################################################"
echo "Installing Slack..."

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget gdebi-core

# Download the latest Slack .deb package
wget https://downloads.slack.com/linux/releases/slack-desktop-4.31.0-amd64.deb -O slack.deb

# Install the .deb package using gdebi to handle dependencies
sudo gdebi -n slack.deb

# Clean up
rm slack.deb

echo "Slack has been installed successfully."
echo "################################################"
