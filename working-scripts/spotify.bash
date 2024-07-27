#!/bin/bash

echo "################################################"
echo "Installing Spotify..."

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget apt-transport-https curl

# Add Spotify's official repository
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Update package list again to include Spotify's repository
sudo apt-get update

# Install Spotify
sudo apt-get install -y spotify-client

echo "Spotify has been installed successfully."
echo "################################################"
