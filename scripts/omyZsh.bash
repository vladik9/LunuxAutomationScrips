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

# Copy fonts to the right place
cp -r ../utils/Fonts-Linux/* ~/.fonts
cp -r ../utils/Terminal\ Settings/.zshrc ~/
cp -r ../utils/Terminal\ Settings/config ~/.config/terminator/

# Install oh-my-zsh using the install script from the official repository
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy the powerlevel10k theme to the custom folder in oh-my-zsh
echo "################################################"
echo "Installing omyZsh Plugs..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use

git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

source ~/.zshrc

echo "omyZsh Plugs has been installed successfully."

# Clone the powerlevel10k theme repository to the custom folder in oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


echo "Open Gnome Tweaks and change monospace and document text to MesloLGS NF Regular"

sudo apt install bat

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

echo "Close and reopen your terminal"

echo "Oh-my-zsh has been installed successfully."
echo "################################################"
