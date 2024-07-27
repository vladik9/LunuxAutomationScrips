#!/bin/bash

echo "################################################"
echo "Installing oh-my-zsh..."

# Install zsh
sudo apt-get install zsh -y

# Change the shell for the current user
echo "Changing shell to zsh..."

# Inform the user to close and reopen the terminal
echo "Please close this terminal and reopen a new one for changes to take effect."

mkdir ~/.fonts
mkdir ~/.icons


# Copy fonts and icons to the right place
cp -r ../utils/Fonts-Linux/* ~/.fonts
cp -r ../utils/Icons-Linux/* ~/.icons
cp -r ../utils/Terminal\ Settings/zshrc ~/


# Install oh-my-zsh using the install script from the official repository
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Clone the powerlevel10k theme repository to the custom folder in oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


echo "Open Gnome Tweaks and change monospace and document text to MesloLGS NF Regular"


echo "Close and reopen your terminal"

echo "Oh-my-zsh has been installed successfully."
echo "################################################"
