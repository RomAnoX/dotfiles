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

# Load asdf tools version managers
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Load direnv
eval "$(direnv hook zsh)"

# replaced with asdf tools version manager
# Load rbenv
# eval "$(rbenv init -)"
# Load nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

# Load completions
source $HOME/.dotfiles/system/completions.zsh


###-tns-completion-start-###
if [ -f /Users/romanox/.tnsrc ]; then 
    source /Users/romanox/.tnsrc 
fi
###-tns-completion-end-###
