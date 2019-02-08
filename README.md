This is my default configuration for my dotfiles.
Using Zsh with antibody, Neovim with vim-plug and Tmux

Things to install
* brew
* postgres
* redis
* asdf
  - ruby 2.4.4
  - nodejs 8.10.0
* antibody
* diff-so-fancy
* exa
* fzf
* neovim
* tmux
* docker
* docker-compose
* docker server for mac
* aws-cli
* 1password
* iTerm
* Atom
* Zoom Meeting
* Slack
* Whatsapp
* Chrome
* Spectacle

Install Fonts
```
$ brew tap caskroom/fonts
$ brew cask install font-hack-nerd-font
```

Clone Repo
```
$ git clone git@github.com:RomAnoX/dotfiles.git ~/.dotfiles
```

Link Configuration Files
```
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/gitignore ~/.gitignore
$ ln -s ~/.dotfiles/vimrc ~/.vimrc
$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/tmux.config ~/.tmux.config
$ ln -s ~/.dotfiles/.atom/ ~/.atom
$ ln -s ~/.dotfiles/rubocop.yml ~/.rubocop.yml

$ mkdir -p ~/.config/nvim
$ ln -s ~/.config/init.vim ~/.vimrc
```

Remove the login information
```
$ touch ~/.hushlogin
```

Copy your SSH keys and configuration
Copy your AWS credentials

For iTerm use the `molokai` theme colors that is in the repo, and also
configure Fura Code 14pt or Fira Code 14 pt as the font with ligatures

For Atom run the “Package sync: Sync” command from the Atom Command Palette
For NVIM just run `vim` and let the plugins to get installed
For Tmux just run `tmux` and let the plugins to get installed
