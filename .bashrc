#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# global variables
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox-developer-edition"

# autostart Xorg
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

#PS1='\[\033[1;34m\]\u\[\033[31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[33m\]\$\[\033[0m\] '

PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 7)\]] \[$(tput setaf 1)\]\\$ \[$(tput sgr0)\]"
