"**************************************
" NeoVim Configuration
"**************************************
if has('vim_starting')
  set nocompatible " Be iMproved
endif

" Required:
call plug#begin('~/.vim/plugged')

"**************************************
" Vim-plug Plugin Packages
"**************************************
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'amirh/HTML-AutoCloseTag'
Plug 'othree/yajs.vim'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'tmux-plugins/vim-tmux'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-scripts/CSApprox'
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
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

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

" Encoding
set bomb
set binary

" Directories for swp files
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set showcmd

" Tabs
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

"**************************************
" Visual Settings
"**************************************
syntax on
set ruler
set number
set t_Co=256
set mouse=

if !has("gui_running")
  let g:CSApprox_loaded = 1
endif

if (exists('+colorcolumn'))
  set colorcolumn=80
endif

set nowrap
set list
" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

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
cnoreabbrev wQ qw
cnoreabbrev WQ qw
cnoreabbrev Q q
cnoreabbrev W w
cnoreabbrev Qalll qall

" Disable Ex mode from Q
nnoremap Q <nop>

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules bower_components'

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

" Plugin CtrlP
set wildmode=list:longest,list:full
set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/node_modules/*,*/dist/*,*/bower_components/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|node_modules\|bower_components\|dist$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:crtlp_use_caching = 0
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>e'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

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

" Clean search (highlight)
noremap <silent> <leader><space> :noh<CR>

" Vmap for maintain visual mode after shifting > and <
vmap < <gv
vmap > >gv

" Custom configs
let g:javascript_enable_domhtmlcss = 1

