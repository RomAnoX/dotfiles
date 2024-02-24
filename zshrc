# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug $HOME/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "MAHcodes/distro-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# Load and initialise completion system
autoload -Uz compinit
compinit

# personal files
plug $HOME/.dotfiles/system/env.sh
plug $HOME/.dotfiles/system/aliases.zsh
plug $HOME/.dotfiles/system/keybindings.zsh
plug $HOME/.dotfiles/system/utils.zsh
plug $HOME/.dotfiles/system/secrets.zsh

# bun completions
[ -s "/Users/uacosta/.bun/_bun" ] && source "/Users/uacosta/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/opt/gawk/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
