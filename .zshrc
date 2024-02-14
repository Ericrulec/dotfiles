# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="juanghurtado"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
source $ZSH/oh-my-zsh.sh
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Color manpages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

plugins=(ssh-agent git jsontools)
# Enable ssh-agent forwarding
zstyle :omz:plugins:ssh-agent agent-forwarding yes
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export EDITOR=nvim
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'
alias l='ls -lav --ignore=.?*'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Example aliases
 alias vim="nvim"
 alias lg="lazygit"
 alias zshconfig="nvim ~/.zshrc"
 alias nvimconfig="nvim ~/.config/nvim/."
 alias portfolio="cd ~/workspace/golang/gohtmx"
 alias work="cd ~/workspace/golang/interpreter"
 alias haskel='cd ~/workspace/golang/haskell-interpreter'
 alias addssh="eval $(ssh-agent -s)"
 alias prettyjson="python -m json.tool"
 alias sortprettyjson="python -m json.tool --sort-keys"
 alias modmanager="r2modman --no-sandbox"
 alias liststartupfiles="/bin/bash -lixc exit 2>&1 | sed -n 's/^+* \(source\|\.\) //p'"

source $ZSH/oh-my-zsh.sh


# Created by `pipx` on 2024-01-23 20:20:34
export PATH="$PATH:/home/erik/.local/bin"
