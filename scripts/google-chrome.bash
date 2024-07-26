#!/bin/bash
echo "################################################"
echo "Installing Google Chrome..."
# Check if wget is installed
if ! [ -x "$(command -v wget)" ]; then
  echo 'Error: wget is not installed. Please install wget before running this script.' >&2
  exit 1
fi

# Download the latest stable version of Google Chrome
echo "Downloading Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb

# Install Google Chrome
echo "Installing Google Chrome..."
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# Install dependencies if necessary
sudo apt-get install -f

# Clean up the downloaded .deb file
rm /tmp/google-chrome-stable_current_amd64.deb

echo "Google Chrome has been installed successfully."
echo "################################################"
