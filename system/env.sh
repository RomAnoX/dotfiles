# Custom variables
export EDITOR='nvim'
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/sbin
export PATH=${PATH}:${GOPATH}/bin

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/usr/local/opt/sqlite/bin

# ls colors
export CLICOLOR=1
export LSCOLORS="ExFxCxDxBxegedabagacad"

# Customize geometry
export GEOMETRY_COLOR_PROMPT=green
export GEOMETRY_COLOR_ROOT=magenta
export GEOMETRY_COLOR_VIRTUALENV=white
export GEOMETRY_COLOR_EXIT_VALUE=red
export GEOMETRY_SYMBOL_PROMPT="➜"
export GEOMETRY_SYMBOL_EXIT_VALUE="✗"
