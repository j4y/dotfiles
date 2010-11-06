# System-wide .bashrc file for interactive bash(1) shells.
# this file is sourced whenever a script written in bash executes
# this should really only include bash specific settings

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ls aliases
alias ll='ls -l'
alias la='ls -A'

# configure the bash prompt
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]\[\033[00m\]\$ '

# turn listing color on
export CLICOLOR=1
# config LSCOLORS (BSD/OSX)
export LSCOLORS=exfxcxdxbxegedabagacad
# config LS_COLORS (Linux)
#export LS_COLORS=di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:

