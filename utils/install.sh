#!/bin/sh

# Fish config
rm -rf $HOME/.config/fish/config.fish
ln -s -i $HOME/.dotfiles/fish/config.fish $HOME/.config/fish/config.fish

# Git
ln -s -i $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
ln -s -i $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global

# Vim
ln -s -i $HOME/.dotfiles/.vimrc $HOME/.vimrc

# Sublime
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s $HOME/.dotfiles/sublime-text-3/Packages/User $HOME/Library/Application\ Support/Sublime\ Text\ 3//Packages
sudo ln -s -i /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /bin/subl

# PHP
mkdir $HOME/.config/psysh
ln -s -i $HOME/.dotfiles/php/psysh-config.php $HOME/.config/psysh/config.php