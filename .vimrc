call plug#begin()

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"

set backspace=indent,eol,start

set background=dark
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

set nocompatible

let mapleader = " "

map <leader>ff :GFiles<cr>
map <leader>fo :Files<cr>
map <leader>fb :Buffers<cr>
map <leader>bk :bd<cr>

set tabstop=4
