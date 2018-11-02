# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/bin
export GOPATH=/Users/pdezwart/Documents/workspace/go


unset USERNAME

export SVN_EDITOR=vim

# Enable color grep, even when piping through less
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'
export LESS=eFRX
