#!/bin/bash

# Update repositiries
sudo apt-get update

# Remove some packages
REMOVED_PACKAGES=$(cat remove.list | xargs)
sudo apt-get remove $REMOVED_PACKAGES

# Upgrade all packages
sudo apt-get -y upgrade

# Install packages from official repositories
OFFICIAL_PACKAGES=$(cat official.list | xargs)
sudo apt-get -y install $OFFICIAL_PACKAGES

# Change shell to Zsh
chsh -s $(which zsh)

# Install Anaconda
wget "https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh" -O anaconda.sh 
bash anaconda.sh
rm anaconda.sh
