#!/bin/bash

# Install Homebrew
BREW_INSTALLED=`command -v brew`
if [ "$BREW_INSTALLED" = "" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install the standard packages
brew install tree wget awscli jq gawk golang gradle gnu-tar gzip
brew install --with-default-names gnu-sed

# Install a better vim:
curl -s -o "vimrc" "https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim"

# Link in files
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_profile ~/.bash_profile
ln -s $PWD/bash ~/.bash
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/screenrc ~/.screenrc

# Manual installs
# - IntelliJ
# - Slack
# - Docker
