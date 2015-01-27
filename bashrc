
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit"

# append to the history file, don't overwrite it
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
 shopt -s cdspell

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Whenever displaying the prompt, write the previous line to disk
 export PROMPT_COMMAND="history -a"


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Some shortcuts for different directory listings
alias ls='ls -hFGp'                 # classify files in colour
alias ll='ls -lF'                              # long list
alias la='ls -Al'                              # all but . and ..
alias lsd='ls | grep "\/$"'            # list only directories
alias lsda='ls -a | grep "\/$"'            # list only directories
alias lld='ls -l | grep "\/$"'            # list only directories
alias llda='ls -la | grep "\/$"'            # list only directories
alias dir='ls -l'

# my preferred editor
export EDITOR='vim'


# python virtualenvwrapper
vew_path=$(which virtualenvwrapper.sh)
if [ -f $vew_path ] ; then
    export WORKON_HOME=~/.virtualenvs
    export PROJECT_HOME=~/git
    source $vew_path
fi

# setup nice colors
dc_path=$(which dircolors)
if [[ -x $dc_path ]]
then 
	eval `${dc_path} ~/.dircolors`
fi

export GREP_OPTIONS='--color=auto'
alias ls='ls --color'
export PS1="$(tput setaf 1)\w\n\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$\[$(tput sgr0)\] "

