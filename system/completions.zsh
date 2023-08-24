# Tab completion from both ends
setopt completeinword

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.dotfiles/completions/git-completion.bash

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use menu selection instead of tab cycle
zstyle ':completion:*' menu select

# list-colors when completing
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# custom completions
fpath=($HOME/.dotfiles/completions $fpath)
