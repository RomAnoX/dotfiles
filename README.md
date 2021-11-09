This is my default configuration for my dotfiles.
Using Zsh with antibody, Neovim with vim-plug and Tmux

Copy your SSH keys and configuration

Copy your AWS credentials

Things to install

- [Brew](https://brew.sh/)
  - zsh (only if needed)
  - postgres
  - redis
  - antibody
  - diff-so-fancy
  - the_silver_searcher
  - ripgrep
  - exa
  - fzf
  - neovim
  - tmux
- [asdf](https://github.com/asdf-vm/asdf)
- [Docker for mac](https://docs.docker.com/docker-for-mac/install/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- [Brew Cask](https://github.com/Homebrew/homebrew-cask)
  - 1password
  - iterm2
  - visual-studio-code
  - zoomus
  - whatsapp
  - spectacle
  - dropbox
  - spotify
  - vlc

Install Fonts

```
$ brew tap homebrew/cask-fonts
$ brew install --cask font-hack-nerd-font
$ brew install --cask font-fira-code
$ brew install --cask font-jetbrains-mono
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
$ ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# for NeoVim app
$ mkdir -p ~/.config/nvim/autoload
$ ln -s ~/.dotfiles/vimrc ~/.config/nvim/init.vim
```

Remove the login information

```
$ touch ~/.hushlogin
```

For iTerm use the `molokai` theme colors that is in the repo, and also
configure Fura Code 14pt or Fira Code 14 pt as the font with ligatures

For Atom run the “Package sync: Sync” command from the Atom Command Palette

For NVIM just run `vim` and let the plugins to get installed

For Tmux just run `tmux` and let the plugins to get installed
