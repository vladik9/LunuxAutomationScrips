#!/bin/bash

echo "################################################"
echo "Installing SuperFile..."

# Install deb file
sudo bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"

echo "SuperFile has been installed successfully."
echo "################################################"
