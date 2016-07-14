
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Bundles from zsh-users.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme dracula/zsh dracula

# Tell antigen that you're done.
antigen apply

# User configuration
export PATH="/home/uacosta/.rbenv/shims:/home/uacosta/.rbenv/bin:/home/uacosta/.rbenv/shims:/home/uacosta/.rbenv/bin:/home/uacosta/.nvm/versions/node/v0.12.7/bin:/home/uacosta/.rbenv/shims:/home/uacosta/.rbenv/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/uacosta/bin:/home/uacosta/bin"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Aliases
alias adops="cd /app/shared/docroots"

alias tnew='tmux new -s'
alias tat='tmux attach -d -t'
alias tls='tmux ls'
alias tlw='tmux list-window'
alias tsw='tmux switch -t'
alias tlc='tmux list-command'
alias trs='tmux rename-session -t'

alias gitup='git checkout master && git pull'
alias commit='git commit -m'
alias vim='nvim'

# Killing
alias tks='tmux kill-session -t'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="/home/uacosta/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/uacosta/.linuxbrew/bin:$PATH"
export PATH="/home/uacosta/.linuxbrew/sbin:$PATH"
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
