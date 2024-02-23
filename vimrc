"**************************************
" NeoVim Configuration
"**************************************

" vim-plug (https://github.com/junegunn/vim-plug) settings
" Automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
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
Plug 'mattn/emmet-vim', { 'for': ['html*', 'vue*', 'javascript.jsx'] }
Plug 'sheerun/vim-polyglot'
Plug 'crusoexia/vim-javascript-lib', { 'for': ['javascript*', 'vue'] }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'matze/vim-move'
Plug 'alvan/vim-closetag', { 'for': ['html*', 'vue*', 'javascript.jsx'] }
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['sass', 'scss', 'vue'] }
Plug 'vim-scripts/CSApprox'
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'bogado/file-line'
Plug 'alvan/vim-closetag'
Plug 'sbdchd/neoformat'
" Please be sure to use NeoVim
Plug 'w0rp/ale'
" "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Themes
Plug 'dracula/vim'
Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
Plug 'gummesson/stereokai.vim'
Plug 'reewr/vim-monokai-phoenix'
Plug 'j-tom/vim-old-hope'
Plug 'chriskempson/base16-vim'
Plug 'hzchirs/vim-material'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

let Theme = "Catppuccin"

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
set fillchars+=stl:\ ,stlnc:\
set background=dark

if (Theme == "Catppuccin")
  colorscheme catppuccin-mocha
endif

if (Theme == "Monokai")
  let g:monokai_term_italic = 1
  colorscheme monokai
endif

if (Theme == 'Molokai')
  " let g:molokai_original = 1
  let g:rehash256 = 1
  colorscheme molokai
endif

if (Theme == 'Stereokai')
  colorscheme stereokai
endif

if (Theme == 'Base16')
  let base16colorspace=256
  if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
  endif
endif

if (Theme == "Phoenix")
  colorscheme monokai-phoenix
endif

if (Theme == "OldHope")
  colorscheme old-hope
endif

if (Theme == "Dracula")
  colorscheme dracula

  " Custom colors for HTML with dracula theme
  hi htmlTag ctermfg=212 guifg=#ff79c6
  hi htmlEndTag ctermfg=212 guifg=#ff79c6
  hi htmlTagname ctermfg=141 guifg=#bd93f9
  hi htmlArg ctermfg=117 guifg=#8be9fd
  hi jsObjectKey ctermfg=117
  hi jsClassKeywords ctermfg=212
  hi jsThis ctermfg=215
  hi jsFuncName ctermfg=84
  hi jsFunction ctermfg=212
  hi jsFuncCall ctermfg=84

  " This color is for neomake signs
  hi SignColumn ctermbg=232
  hi LineNr ctermbg=234 ctermfg=246 cterm=NONE
  hi CursorLineNr ctermfg=Yellow ctermbg=Black cterm=bold
endif

if (Theme == "One")
  "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
  "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
  "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (empty($TMUX))
    if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif
  endif


  let g:one_allow_italics = 1 " I love italic for comments
  colorscheme one
endif

" There is love for italic comments
" hi Comment cterm=italic

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
let g:airline_theme = 'catppuccin'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#syntastic#enabled = 1

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

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  au FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ all
endif

" Use Ctrl + E and , for Emmet for html files
let g:user_emmet_leader_key='<C-E>'

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

" Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

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
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
set splitbelow splitright

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" New Ale Syntax Checker
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'go': ['golint'],
\}
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
hi ALEWarningSign ctermfg=227 ctermbg=237
hi ALEErrorSign ctermfg=160 ctermbg=237

" Options for running lint
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 0
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0

" Neoformat
autocmd BufWritePre *.js Neoformat
let g:neoformat_try_formatprg = 1

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
let g:closetag_filenames = "*.html,*.xhtml,*.jsx,*.vue,*.js"
let g:javascript_enable_domhtmlcss = 1
let g:mustache_abbreviations = 1
let g:move_key_modifier = 'C'
let g:jsx_ext_required = 0
