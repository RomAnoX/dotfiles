"**************************************
" NeoVim Configuration
"**************************************

" vim-plug (https://github.com/junegunn/vim-plug) settings
" Automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if has('vim_starting')
  set nocompatible " Be iMproved
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=utf-8
endif

" Required:
call plug#begin('~/.vim/plugged')

"**************************************
" Vim-plug Plugin Packages
"**************************************
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'rstacruz/sparkup', { 'rtp': 'vim/', 'for': 'html*' }
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'matze/vim-move'
Plug 'amirh/HTML-AutoCloseTag', { 'for': 'html*' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'sass' }
Plug 'vim-scripts/CSApprox'
Plug 'posva/vim-vue', { 'for': 'vue' }
" Themes
Plug 'dracula/vim'

if has('nvim')
  Plug 'benekastah/neomake'
else
  Plug 'scrooloose/syntastic'
  Plug 'noahfrederick/vim-neovim-defaults'
endif

call plug#end()

" Required:
filetype plugin indent on

"**************************************
" Basic Setup
"**************************************
" Fix Backspace indent
set backspace=indent,eol,start

" Map leader to
let mapleader=','

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Directories for swp files
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set showcmd
set showmatch
set noerrorbells

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

"**************************************
" Visual Settings
"**************************************
syntax on
set ruler
set mouse=
set cursorline
set number
set relativenumber

" Theme
set t_Co=256
set background=dark
color dracula

if !&scrolloff
  set scrolloff=3
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

if !has("gui_running")
  let g:CSApprox_loaded = 1
endif

if (exists('+colorcolumn'))
  set colorcolumn=81
endif

set nowrap
set list
" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:»,precedes:«,nbsp:⣿
set gdefault
" dont syntax highlights long lines
set synmaxcol=512

" vim-airline
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#syntastic#enabled = 1

hi SignColumn ctermbg=232

"**************************************
" Abbrevations
"**************************************
" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qalll! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Q q
cnoreabbrev W w
cnoreabbrev Qalll qall

" Disable Ex mode from Q
nnoremap Q <nop>

" terminal
if has('nvim')
  nnoremap <silent> <leader>sh :terminal<CR>
endif

" Use Ctrl + E for sparkup plugin like Emmet for html files

"**************************************
" Abbrevations
"**************************************
" Split
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

set wildmenu
set wildignorecase
set wildmode=list:longest,full
set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*
set wildignore+=*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/\.svn/*
set wildignore+=*/bin/*,*/coverage/*,*/node_modules/*
set wildignore+=*/dist/*,*/bower_components/*

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  nnoremap & :silent! grep! "\b<C-r><C-w>\b"<CR>:cwindow<CR>:redraw!<CR>
  command! -nargs=+ -complete=file_in_path -bar Ag silent grep! <args>|cwindow|redraw!
endif

" FZF file fuzzy search
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~30%' }
noremap <leader>e :FZF<CR>
noremap <leader>b :FzfBuffers<CR>

" NeoMake or Syntastic
if has('nvim')
  " Plugin Neomake
  autocmd! BufWritePost,BufEnter * Neomake
  map <leader>sc :Neomake!<CR>
  let g:neomake_javascript_enabled_makers = ['jshint']
  let g:neomake_ruby_enabled_makers = ['rubocop']
else
  " Plugin Syntastic
  " On by default, turn it off for html
  let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html'] }
  let g:syntastic_ruby_checkers = ['rubocop', 'mri']
  let g:syntastic_javascript_checkers = ['jshint']"
  let g:syntastic_enable_signs = 1
  let g:syntastic_style_error_symbol = '✗✗'
  let g:syntastic_style_warning_symbol = '!!'
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '!'
  let g:syntastic_auto_jump = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_check_on_open = 1
endif

" Disable visualbell
set visualbell t_vb=

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" Close buffer
noremap <silent> <leader>c :bd<CR>

" Clean search (highlight)
noremap <silent> <leader><space> :noh<CR>

" Vmap for maintain visual mode after shifting > and <
vmap < <gv
vmap > >gv

" Custom configs
let g:javascript_enable_domhtmlcss = 1
let g:mustache_abbreviations = 1
let g:move_key_modifier = 'C'
