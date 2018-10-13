#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install the standard packages
brew install tree
brew install wget

# Install a better vim:
curl -o "~/.vimrc" "https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim"

# Link in files
ln -f -s bash_rc ~/.bash_rc
ln -f -s bash_profile ~/.bash_profile
ln -f -s bash ~/.bash
ln -f -s vimrc ~/.vimrc
ln -f -s screenrc ~/.screenrc

# Manual installs
# - IntelliJ
# - Slack
# - Docker
