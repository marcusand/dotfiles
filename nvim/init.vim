let mapleader = " "

syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight search
set ignorecase " ignore case in search
set incsearch " show search results as you type

set title
set nohlsearch

vnoremap . :norm.<CR> " enable repeat command ('.') in visual mode

"=====
" Run PlugInstall if there are missing plugins
"=====
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

"=====
" Plugins
"=====
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/seoul256.vim'
call plug#end()

" Unified color scheme (default: dark)
let g:seoul256_background = 233
colo seoul256
