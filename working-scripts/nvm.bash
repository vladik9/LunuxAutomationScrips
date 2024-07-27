#!/bin/bash
echo "################################################"
echo "Installing NPM..."
# sudo apt-get install npm -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
source ~/.bashrc
nvm -v
nvm install  v20.16.0 
nvm alias default v20.16.0 

echo "NPM has been installed successfully."
echo "################################################"
