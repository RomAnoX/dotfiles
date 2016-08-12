# Dracula Theme v1.2.5
#
# https://github.com/dracula/dracula-theme
#
# Copyright 2016, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author Zeno Rocha <hi@zenorocha.com>

PROMPT='%(?.%{$fg_no_bold[green]%}➜ .%{$fg_no_bold[red]%}➜ ) %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_CLEAN=")%{\x1b[0m%} %{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=")%{\x1b[0m%} %{$fg_bold[red]%}✗ "
ZSH_THEME_GIT_PROMPT_PREFIX="%{\x1b[3m%}%{$fg_no_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
