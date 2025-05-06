# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ parameter expansion

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"
# check status with `zinit zstatus`

# Add Powerlevel10k
	zinit ice depth=1; zinit light romkatv/powerlevel10k
#       ^^^^^^^^^^^^^^^^^ add modifiers "depth=1" to next zinit cmd

# [--- Add zsh plugins --]
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions # you need also load completions, see below
# check on github repo under /src which tools are coverd
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# add plugins from ohmyzsh
zinit snippet OMZP::git


# Load completions
autoload -U compinit $$ cominit

zinit cdreplay -q # NOTE: do not understand this


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey '^f' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
# NOTE: if you start with `curl` and hit <c-p> you will get only prev cmd with curl

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # make auto completion case insnsitive
# e.g. ls d -> will expand to Downloads
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' # zoxide


# [--- Aliases --]
alias ls='ls --color'
alias n='nvim'
alias r='ranger'

# [--- Shell integrations --]
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# end
