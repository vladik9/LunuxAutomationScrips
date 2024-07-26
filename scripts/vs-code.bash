#!/bin/bash
echo "################################################"
echo "Installing VsCode..."
 #!/bin/bash

# Check if wget is installed
if ! [ -x "$(command -v wget)" ]; then
  echo 'Error: wget is not installed. Please install wget before running this script.' >&2
  exit 1
fi

# Check if gpg is installed
if ! [ -x "$(command -v gpg)" ]; then
  echo 'Error: gpg is not installed. Please install gpg before running this script.' >&2
  exit 1
fi

# Import the Microsoft GPG key
echo "Importing Microsoft GPG key..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
rm -f packages.microsoft.gpg

# Enable the Visual Studio Code repository
echo "Adding Visual Studio Code repository..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
sudo apt-get install -y code

echo "Visual Studio Code has been installed successfully."

echo "VsCode has been installed successfully."
echo "################################################"
