#!/bin/bash

# Remove some packages
REMOVED_PACKAGES=$(cat remove.list | xargs)
sudo pacman -R $REMOVED_PACKAGES

# Upgrade all packages
sudo pacman -Syyu

# Install packages from official repositories
OFFICIAL_PACKAGES=$(cat official.list | xargs)
sudo pacman -S $OFFICIAL_PACKAGES

# Install packages from AUR
AUR_PACKAGES=$(cat aur.list | xargs)
yaourt -S $AUR_PACKAGES

# Install Oh My Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Change shell to Zsh
chsh -s $(which zsh)

# Install Anaconda
wget "https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh" -O anaconda.sh 
bash anaconda.sh
rm anaconda.sh
