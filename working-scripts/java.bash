#!/bin/bash
echo "################################################"
echo "Installing Java..."
sudo apt-get install java-common
sudo dpkg -i ../deb/java-21-amazon-corretto-jdk_21.0.4.7-1_amd64.deb
java -version

echo "Java has been installed successfully."
echo "################################################"
