This is my default configuration for my dotfiles.
Using Zsh with antigen, Neovim with vim-plug and Tmux

Now using [Base 16 colors](https://github.com/chriskempson/base16)

tic xterm-256color-italic.terminfo

echo `tput sitm`italics`tput ritm`

tic screen-256color-italic.terminfo

echo $TERM

```
$ cat <<EOF|tic -x -
tmux|tmux terminal multiplexer,
  ritm=\E[23m, rmso=\E[27m, sitm=\E[3m, smso=\E[7m, Ms@,
  use=xterm+tmux, use=screen,

tmux-256color|tmux with 256 colors,
  use=xterm+256setaf, use=tmux,
EOF<Paste>
```
