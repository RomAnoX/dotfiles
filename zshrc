# Load custom variables before anything
source $HOME/.dotfiles/system/env.sh

# Init antibody
source $HOME/.dotfiles/antibody/init

# Load prompt settings
source $HOME/.dotfiles/system/prompt.zsh

# Set keybindings
source $HOME/.dotfiles/system/keybindings.zsh

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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/uacosta/Projects/mycnc/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/uacosta/Projects/mycnc/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/uacosta/Projects/mycnc/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/uacosta/Projects/mycnc/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/uacosta/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/uacosta/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh
