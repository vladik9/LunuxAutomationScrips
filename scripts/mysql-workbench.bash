#!/bin/bash

echo "################################################"
echo "Installing MySQL Workbench..."

# Update package list
sudo apt-get update

# Install necessary dependencies
sudo apt-get install -y wget lsb-release

# Download the MySQL APT repository setup package
wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb -O mysql-apt-config.deb

# Install the MySQL APT repository setup package
sudo dpkg -i mysql-apt-config.deb

# Update package list to include MySQL APT repository
sudo apt-get update

# Install MySQL Workbench
sudo apt-get install -y mysql-workbench

# Clean up
rm mysql-apt-config.deb

echo "MySQL Workbench has been installed successfully."
echo "################################################"
