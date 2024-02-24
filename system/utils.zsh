# Use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load asdf tools version manager
. /usr/local/opt/asdf/libexec/asdf.sh

# Load direnv
eval "$(direnv hook zsh)"

# zoxide installer
eval "$(zoxide init --cmd cd zsh)"

# added by travis gem
[ ! -s /Users/uacosta/.travis/travis.sh ] || source /Users/uacosta/.travis/travis.sh
