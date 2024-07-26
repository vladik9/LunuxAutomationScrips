#!/bin/bash

echo "################################################"
echo "Installing Telegram..."

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget tar

# Download the latest Telegram tarball
wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz

# Extract the tarball
tar -xf telegram.tar.xz

# Move the extracted Telegram folder to /opt
sudo mv Telegram /opt/telegram

# Create a symbolic link to the Telegram executable
sudo ln -sf /opt/telegram/Telegram /usr/local/bin/telegram

# Clean up
rm telegram.tar.xz

echo "Telegram has been installed successfully."
echo "################################################"
