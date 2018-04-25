set nocompatible

"Setup plugins
call plug#begin('~/.vim/plugged') 
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe', {'do': './install.sh --clang-completer'}
call plug#end()

"select colourscheme and style
colorscheme gruvbox
set bg=dark

"setup airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

set exrc
set secure

set number
set relativenumber

set incsearch
set hlsearch

set tabstop=4
set softtabstop=4 
set shiftwidth=4
set expandtab
set autoindent

set wildmenu
set showmatch

set backspace=indent,eol,start

let mapleader=","

"rebind escape to 'jk'
inoremap jk <esc>
"toggle gundo
nnoremap <leader>u :GundoToggle<CR>
"save session
nnoremap <leader>s :mksession<CR>
"set comma-space to clear search highlighting
nnoremap <leader><space> :noh<cr>
"quicker vertical split
nnoremap <leader>w <C-w>v<C-w>
"rebind window navigation commands
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"rebind tab to find bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

function! ListLeaders()
     silent! redir @a
     silent! nmap <LEADER>
     silent! redir END
     silent! new
     silent! put! a
     silent! g/^s*$/d
     silent! %s/^.*,//
     silent! normal ggVg
     silent! sort
     silent! let lines = getline(1,"$")
endfunction
