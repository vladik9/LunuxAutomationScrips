#!/bin/bash
echo "################################################"
echo "Installing Terminator..."
sudo apt-get install terminator -y
cp -r ../utils/Terminal\ Settings/config ~/.config/terminator/
echo "Terminator has been installed successfully."
echo "################################################"
 