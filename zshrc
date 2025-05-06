# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git fzf-tab)

source $ZSH/oh-my-zsh.sh

# Aliases
alias n="nvim"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source <(fzf --zsh)

eval "$(zoxide init zsh)"
