#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

echo "installing dotfiles..."

# -------------------------
# zsh
# -------------------------
echo "→ linking zsh"
ln -sf "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"

# -------------------------
# tmux
# -------------------------
echo "→ linking tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$HOME/.tmux.conf"

# -------------------------
# neovim
# -------------------------
echo "→ linking neovim"
ln -sf "$DOTFILES/nvim" "$HOME/.config/nvim"

# -------------------------
# skhd (macos only)
# -------------------------
if [[ "$(uname)" == "Darwin" ]]; then
	echo "→ linking skhd (macos)"
	mkdir -p "$HOME/.config/skhd"
	ln -sf "$DOTFILES/skhd/skhdrc" "$HOME/.config/skhd/skhdrc"
fi

# -------------------------
# yabai (macos only)
# -------------------------
if [[ "$(uname)" == "Darwin" ]]; then
	echo "→ linking yabai (macos)"
	mkdir -p "$HOME/.config/yabai"
	ln -sf "$DOTFILES/yabai/yabairc" "$HOME/.config/yabai/yabairc"
fi

echo "done."
