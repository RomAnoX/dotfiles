
call plug#begin('~/.vim/plugged')

" Plugin
Plug 'spf13/vim-autoclose'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'othree/yajs.vim'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'mustache/vim-mustache-handlebars'

if !has('nvim')
  Plug 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
endif

Plug 'cakebaker/scss-syntax.vim'
Plug 'dracula/vim'

if has('nvim')
  Plug 'benekastah/neomake'
else
  Plug 'scrooloose/syntastic'
  Plug 'noahfrederick/vim-neovim-defaults'
endif

call plug#end()

" Global options
set number
set mouse=
set nowrap
set ignorecase
set smartcase
set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace"
set backupdir=~/.vim/_backup//  " where to put backup files.
set directory=~/.vim/_temp//    " where to put swap files.
set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb,*/node_modules/*,*/dist/*

" Disable Ex mode from Q
nnoremap Q <nop>

" AutoCloseTag options
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.hbs"

" Bundle Airline options
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme = 'molokai'

" Plugin CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|node_modules\|dist$'

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  " Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

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

hi SignColumn ctermbg=232
