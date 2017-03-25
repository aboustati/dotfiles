#!/bin/bash

# Get current dir
export DOTFILES_DIR 
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Oh My Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install Vundle
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
#ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf
ln -sfv "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc
