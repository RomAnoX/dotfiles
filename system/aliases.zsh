alias v="nvim"

# Just screw the world
alias vim="nvim"
alias vi="command vim"
alias ireallywantvi="command vi"

alias g="git"
alias be="bundle exec"

# Create a named tmux session
alias tm="tmux new -s"

# Create a tmux session named after the current directory
alias tmu="tmux new -s ${PWD##*/}"

alias ta="tmux attach"
alias tat="tmux attach -t"

# vim-like exit
alias :q="exit"
alias cl="clear"

# Color listing files
alias ll="ls -lF -G"
alias la="ls -laF -G"
alias lsd="ls -lF -G | grep --color=never '^d'"
alias ls="command ls -G"

# Color grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Creating compacted cd ..
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

alias ssh="TERM=xterm-256color ssh"
