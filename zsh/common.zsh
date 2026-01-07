# ----------- ZSH THINGS ----------- #

# path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh theme
ZSH_THEME="crcandy"

# zsh plugins
plugins=(
  git
  zsh-autosuggestions
  fast-syntax-highlighting
  zsh-autocomplete
)

# zsh completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit

# load oh-my-zsh
source "$ZSH/oh-my-zsh.sh"


# ----------- EDITOR THINGS ----------- #

# default editor
export EDITOR="nvim"

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"


# ----------- DEVELOPER THINGS ----------- #

# common user binaries
export PATH="$HOME/.local/bin:$PATH"

# conda fix
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

# nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


# ----------- SHELL THINGS ----------- #

# ls replacement
if command -v eza >/dev/null 2>&1; then
  alias ls="eza --icons --colour -G -l -ahB"
fi

# history
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"

# redis / valkey cli completions
compdef '_dispatch redis-cli_completion redis-cli' valkey-cli
