# ls colors
export CLICOLOR=1
export LSCOLORS="ExFxCxDxBxegedabagacad"

# Enable prompt themes
setopt PROMPT_SUBST

autoload -U colors && colors
autoload -U promptinit
autoload -Uz compinit && compinit

# Use base16
#BASE16_SCHEME="tomorrow-night"
BASE16_SCHEME="default-dark"
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-$BASE16_SCHEME.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Customize geometry
GEOMETRY_COLOR_PROMPT=green
GEOMETRY_COLOR_ROOT=magenta
GEOMETRY_COLOR_VIRTUALENV=white
GEOMETRY_COLOR_EXIT_VALUE=red
GEOMETRY_SYMBOL_PROMPT="➜"
GEOMETRY_SYMBOL_EXIT_VALUE="✗"
