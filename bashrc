# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ "$PS1" ]; then
    . ~/.bash/aliases.sh
    . ~/.bash/colors.sh
    . ~/.bash/prompt.sh
fi
