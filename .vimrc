set nocompatible
"Setup plugins
call plug#begin('~/.vim/plugged') 
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'aaronbieber/vim-quicktask'
Plug 'reedes/vim-wordy'
call plug#end()

set t_Co=256
set background=dark
colorscheme grb256

filetype plugin indent on
syntax on
set dictionary+=/usr/share/dict/web2
set completeopt=longest,menuone
set backspace=2 
set autoindent
set display=lastline
set noswapfile
set wildmenu
set wildmode=longest:full,full
set showcmd
set showmode
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
"map jk to escape
inoremap jk <esc>
"set comma-space to clear search highlighting
nnoremap <leader><space> :noh<cr>
"quicker vertical split
nnoremap <leader>w <C-w>v<C-w>
"disable arrow keys
noremap <up> <nop>
"set ,n to switch to dictionary completion mode
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
