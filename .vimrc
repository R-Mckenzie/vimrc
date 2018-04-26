set nocompatible
"Setup plugins
call plug#begin('~/.vim/plugged') 
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
call plug#end()

set background=dark
colorscheme gruvbox

filetype plugin indent on
syntax on
set backspace=2
set autoindent
set display=lastline
set wildmenu
set wildmode=list:longest
set showcmd
set expandtab
set smarttab
set number
set relativenumber
set wrap
set laststatus=2
set ruler
set textwidth=80
set incsearch
set hlsearch
set ignorecase
set smartcase
set nrformats-=octal
set tabstop=4
set shiftwidth=0
set softtabstop=-1
set scrolloff=5
set formatoptions+=ncroqlj

let mapleader=","
"set comma-space to clear search highlighting
nnoremap <leader><space> :noh<cr>
"quicker vertical split
nnoremap <leader>w <C-w>v<C-w>
"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Clean trailing whitespace.
fun! s:trim_whitespace()
	let l:save = winsaveview()
	%s/\s\+$//e
	call winrestview(l:save)
endfun
command! TrimWhitespace call s:trim_whitespace()
