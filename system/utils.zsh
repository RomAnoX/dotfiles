# Use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load asdf tools version manager
. /usr/local/opt/asdf/libexec/asdf.sh

# Load direnv
eval "$(direnv hook zsh)"

# added by travis gem
[ ! -s /Users/uacosta/.travis/travis.sh ] || source /Users/uacosta/.travis/travis.sh

# Okta API Key for gimme-aws-creds
export OKTA_API_KEY="00AQaJlD9-7QwC_XBUohk5_vrU4OtANJd0xDASqtY6"
