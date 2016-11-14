# Load custom variables before anything
source $HOME/.dotfiles/system/env.sh

# Load prompt settings
source $HOME/.dotfiles/system/prompt.zsh

# Init antibody
source $HOME/.dotfiles/antibody/init

# Load aliases
source $HOME/.dotfiles/system/aliases.zsh

# Use base16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load rbenv
eval "$(rbenv init -)"

# Load completions
source $HOME/.dotfiles/system/completions.zsh
