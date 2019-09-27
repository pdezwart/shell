#!/bin/bash

# Install Homebrew
BREW_INSTALLED=`command -v brew`
if [ "$BREW_INSTALLED" = "" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install the standard packages
brew install git watch tree wget awscli jq gawk golang gnu-tar gzip parallel gnu-sed

# Install a better vim:
curl -s -o "vimrc" "https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim"

# Link in files
ln -s $PWD/bashrc ~/.bashrc 2> /dev/null
ln -s $PWD/bash_profile ~/.bash_profile 2> /dev/null
ln -s $PWD/bash ~/.bash 2> /dev/null
ln -s $PWD/vimrc ~/.vimrc 2> /dev/null
ln -s $PWD/screenrc ~/.screenrc 2> /dev/null

# Reset the current terminal
source ~/.bash_profile

# Manual installs
# - IntelliJ
# - Slack
# - Docker
