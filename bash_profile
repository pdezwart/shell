# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
GOROOT=~/Documents/workspace/go
GOPATH=$GOROOT/go

export PATH
unset USERNAME

SVN_EDITOR=vi
export SVN_EDITOR

