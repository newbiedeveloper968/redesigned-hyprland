#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='exit'
alias c='clear'
# PS1='@ \w\n> '
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[2;4m\]$?\[\e[0m\] \[\e[1m\]\w\[\e[0m\] \[\e[97;1;4m\]${PS1_CMD1}\n\[\e[0m\]> '
