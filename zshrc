# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git zsh-autosuggestions fzf-tab)

source $ZSH/oh-my-zsh.sh

# Aliases
alias n="nvim"
alias fd="fdfind"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source <(fzf --zsh)

eval "$(zoxide init zsh)"

# fzf
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker=dir,follow
  --walker-skip .git
  --preview 'tree -C {}'"

# borg
# setup BORG_REPO so you don't have to type the full path
# every time.
export BORG_REPO=/mnt/archive/borg_archive
