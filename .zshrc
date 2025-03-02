# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="juanghurtado"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi
export EDITOR=nvim
export MANPAGER="nvim +Man!"

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



# Created by `pipx` on 2024-01-23 20:20:34
export PATH="$PATH:/home/erik/.local/bin"

source $ZSH/oh-my-zsh.sh

# Source my aliases
source $HOME/.aliases

# bun completions
[ -s "/home/erik/.bun/_bun" ] && source "/home/erik/.bun/_bun"

#(cat ~/.cache/wal/sequences &)

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
