#!/bin/sh

DOTFILES_PATH=$HOME/.dotfiles

# Oh My Zsh
ln -s -i ${DOTFILES_PATH}/zsh/.zshrc $HOME/.zshrc

# Git
ln -s -i ${DOTFILES_PATH}/git/.gitconfig $HOME/.gitconfig
ln -s -i ${DOTFILES_PATH}/git/.gitignore_global $HOME/.gitignore_global
ln -s -i ${DOTFILES_PATH}/git/.giattributes $HOME/.giattributes

# Vim
ln -s -i ${DOTFILES_PATH}/vim/.vimrc $HOME/.vimrc

# Sublime
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ${DOTFILES_PATH}/sublime-text-3/Packages/User $HOME/Library/Application\ Support/Sublime\ Text\ 3//Packages
sudo ln -s -i /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $HOME/bin/subl

# PHP
mkdir $HOME/.config/psysh
ln -s -i ${DOTFILES_PATH}/php/psysh-config.php $HOME/.config/psysh/config.php
ln -s -i ${DOTFILES_PATH}/php/composer.json $HOME/.composer/composer.json

# Clojure
mkdir $HOME/.lein
ln -s -i ${DOTFILES_PATH}/clojure/profiles.clj $HOME/.config/clojure/profiles.clj

# Scala
mkdir -p $HOME/.sbt/0.13/plugins
ln -s -i ${DOTFILES_PATH}/scala/plugins.sbt $HOME/.sbt/0.13/plugins/plugins.sbt

### MacOs related stuff ###
# Mac Plist
ln -s -i ${DOTFILES_PATH}/etc/mac/plist/im.rafa.scheduler.drink-water.plist $HOME/Library/LaunchAgents/im.rafa.scheduler.drink-water.plist

# Spectacle
ln -s -i ${DOTFILES_PATH}/etc/mac/spectacle/Shortcuts.json $HOME/Library/Application\ Support/Spectacle/Shortcuts.json

# Karabiner Elements
ln -s -i ${DOTFILES_PATH}/etc/mac/karabiner-elements $HOME/.config/karabiner
