# ----------- MACOS THINGS ----------- #

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 25)
export PATH="$JAVA_HOME/bin:$PATH"

# android sdk
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# postgres (homebrew)
export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"

# php (herd-lite)
export PATH="$HOME/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="$HOME/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# spicetify
export PATH="$PATH:$HOME/.spicetify"

# terminal settings
export TERM="xterm-256color"

# iterm2 shell integration
if [[ -e "$HOME/.iterm2_shell_integration.zsh" ]]; then
  source "$HOME/.iterm2_shell_integration.zsh"
fi

# 1password cli
eval "$(op completion zsh)"

if (( $+functions[compdef] )); then
  compdef _op op
fi
