##
# prompt.sh
#
# custom prompt setup
#

##
# xterm title
#
if [ $TERM = "xterm" ]; then
	XTITLE="\[\e]0;\u@\h: ${PWD}\a\]"
else
	XTITLE=""
fi

##
# set default prompt colors
#
C_NORMAL="\[\e[${NORMAL}m\]"
#C_HOST=$C_NORMAL
C_COLON=$C_NORMAL
C_END_CHAR=$C_NORMAL

C_DIR_OWNER=$GREEN
C_DIR_WRITABLE=$CYAN
C_DIR_NOWRITE=$RED
C_BRANCH=$BLUE

# these are used in the prompt_setup() function, so they have to be exported
export C_DIR_OWNER C_DIR_WRITABLE C_DIR_NOWRITE

##
# if runnning as root...
#
if [ $EUID = "0" ]; then
	# ...add a red exclamation prefix
	PREFIX="\[\e[${RED}m\]!\[\e[${NORMAL}m\]"
	# ...set the host color to red
	#C_HOST="\[\e[${RED}m\]"
fi

##
# set the pwd color
#
prompt_setup()
{
	if [ -O "$PWD" ]; then
		C_PWD=$C_DIR_OWNER
	elif [ -w "$PWD" ]; then
		C_PWD=$C_DIR_WRITABLE
	else
		C_PWD=$C_DIR_NOWRITE
	fi
	
	export C_PWD
}

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

##
# set the prompt
#
PROMPT_COMMAND=prompt_setup
PS1="${XTITLE}${PREFIX}${C_HOST}\h${C_COLON}:\[\e[\${C_PWD}m\]\w \[\e[${BLUE}m\]\$(git_branch)${C_END_CHAR}\$ ${C_NORMAL}"

export PROMPT_COMMAND PS1
