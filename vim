let mapleader=" "

syntax on

set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
 
noremap i k
noremap j h
noremap k j
noremap p i
noremap <LEADER><CR> :nohlsearch<CR>
map s :<nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>



call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode'

call plug#end()

color snazzy

let g:SnazzyTransparent = 1
