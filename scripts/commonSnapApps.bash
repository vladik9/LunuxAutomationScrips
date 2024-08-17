#!/bin/bash
echo "################################################"
echo "Installing commonSnapApps..."

echo "Installing Discord..."
sudo snap install discord
echo "Discord has been installed successfully."

echo "Installing Slack..."
sudo snap install slack --classic
echo "Slack has been installed successfully."

echo "Installing MySQL Workbench..."
sudo snap install mysql-workbench-community
echo "MySQL Workbench has been installed successfully." 

echo "Installing Google Chrome..."
sudo snap install google-chrome
echo "Google Chrome has been installed successfully."

echo "Installing Spotify..."
sudo snap install spotify
echo "Spotify has been installed successfully."

echo "Installing Visual Studio Code..."
sudo snap install code --classic
echo "Visual Studio Code has been installed successfully."

echo "Installing Telegram..."
sudo snap install telegram-desktop
echo "Telegram has been installed successfully."

echo "Installing Postman..."
sudo snap install postman
echo "Postman has been installed successfully."

echo "Installing sublime-text..."
sudo snap install sublime-text --classic
echo "Sublime-text has been installed successfully."

echo "Installing atom..."
sudo snap install --classic atom
echo "Atom has been installed successfully."


echo "################################################"
