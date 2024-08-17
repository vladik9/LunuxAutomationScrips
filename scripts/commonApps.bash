#!/bin/bash
echo "################################################"
echo "Installing commonApps..."

sudo apt-get update -y

echo "Installing Git..."
sudo apt-get install -y git
echo "Git has been installed successfully."

echo "Installing curl..."
sudo apt-get install -y curl
echo "Curl has been installed successfully."

echo "Installing alacarte..."
sudo apt-get install -y alacarte
echo "alacarte has been installed successfully."

echo "Installing extension..."
sudo apt-get install -y chrome-gnome-shell
echo "Extension has been installed successfully."


echo "Installing FileZilla..."
sudo apt-get install -y filezilla
echo "FileZilla has been installed successfully."

echo "Installing FlameShot..."
sudo apt-get install -y flameshot 
echo "FlameShot has been installed successfully."

echo "Installing gnome-tweaks..."
sudo apt-get install -y gnome-tweaks
echo "Gnome-tweaks has been installed successfully."

echo "Installing htop..."
sudo apt-get install -y htop 
echo "htop has been installed successfully."

echo "Installing neofetch..."
sudo apt-get install -y neofetch
echo "neofetch has been installed successfully."
 
echo "Installing net-tools..."
sudo apt-get install -y net-tools 
echo "Net-tools has been installed successfully."

echo "Installing NodeJs..."
sudo apt-get install -y nodejs 
echo "NodeJs has been installed successfully."

echo "Installing NPM..."
sudo apt-get install -y npm 
echo "NPM has been installed successfully."

echo "Installing NPM..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
source ~/.bashrc
nvm -v
nvm install  v20.16.0 
nvm alias default v20.16.0 
echo "NPM has been installed successfully."

echo "Installing Python..."
sudo apt-get install -y python3 python3-pip python3-venv
sudo apt-get install -y build-essential
echo "Python version:"
python3 --version
echo "Pip version:"
pip3 --version
echo "Python has been installed successfully."

echo "Installing QbitTorrent..."
sudo apt-get install -y qbittorrent
echo "QbitTorrent has been installed successfully."

echo "Installing Spotify..."
sudo apt-get update

sudo apt-get install -y wget apt-transport-https curl
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
echo "Spotify has been installed successfully."

echo "Installing Terminator..."
sudo apt-get install -y terminator 
cp -r ../utils/Terminal\ Settings/config ~/.config/terminator/
echo "Terminator has been installed successfully."

echo "Installing VLC..."
sudo apt-get install  -y vlc
echo "VLC has been installed successfully."

echo "Installing wget..."
sudo apt-get install -y wget
echo "Wget has been installed successfully."

echo "Installing planc..."
sudo apt install plank
echo "Plank has been installed successfully."

echo "################################################"
