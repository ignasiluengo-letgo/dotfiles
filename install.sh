#!/bin/sh

# Fish config
rm -rf $HOME/.config/fish/config.fish
ln -s -i $HOME/.dotfiles/fish/config.fish $HOME/.config/fish/config.fish

# Git
ln -s -i $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
ln -s -i $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global
ln -s -i $HOME/.dotfiles/git/.giattributes $HOME/.giattributes

# Vim
ln -s -i $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

# Sublime
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s $HOME/.dotfiles/sublime-text-3/Packages/User $HOME/Library/Application\ Support/Sublime\ Text\ 3//Packages
sudo ln -s -i /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $HOME/bin/subl

# Intellij
sudo ln -s -i $HOME/.dotfiles/Intellij/idea.vmoptions $HOME/Library/Preferences/elliJIdea2016.1//idea.vmoptions

# PHP
mkdir $HOME/.config/psysh
ln -s -i $HOME/.dotfiles/php/psysh-config.php $HOME/.config/psysh/config.php
ln -s -i $HOME/.dotfiles/php/composer.json $HOME/.composer/composer.json

# Clojure
mkdir $HOME/.lein
ln -s -i $HOME/.dotfiles/clojure/profiles.clj $HOME/.config/clojure/profiles.clj

# Bin
ln -s -i $HOME/.dotfiles/bin/ec2s $HOME/bin/ec2s
