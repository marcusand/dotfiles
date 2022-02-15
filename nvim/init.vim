" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/seoul256.vim'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

" configure color scheme
let g:seoul256_background = 233
colo seoul256

" Automatically deletes all trailing whitespace and newlines at end of file on save. & reset cursor position
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

syntax enable         " highlight syntax
let mapleader = " "   " set leader key to space
vnoremap . :norm.<CR> " enable repeat command ('.') in visual mode
set number            " show line numbers
set noswapfile        " disable the swapfile
set ignorecase        " ignore case in search
set incsearch         " show search results as you type
set title             " set meaningful title in terminal
set nohlsearch        " don't highlight search results

" spaces & tabs
set tabstop=2         " number of visual spaces per TAB
set softtabstop=2     " number of spaces in tab when editing
set shiftwidth=2      " number of spaces to use for autoindent
set expandtab         " tabs are space
set autoindent
set copyindent        " copy indent from the previous line

" auto insert closing characters
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

" split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
