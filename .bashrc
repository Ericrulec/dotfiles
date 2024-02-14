#
# ~/.bashrc
#
export EDITOR=nvim
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'
alias l='ls -lav --ignore=.?*'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
