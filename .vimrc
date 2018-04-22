"Setup plugins
call plug#begin('~/.vim/plugged') 
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe', {'do': './install.sh --clang-completer'}
call plug#end()

"select colourscheme and style
colorscheme gruvbox
set bg=dark

set exrc
set secure
set number
set relativenumber

set incsearch
set hlsearch

set tabstop=4
set softtabstop=4 
set shiftwidth=4

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
"rebind window navigation commands
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
