set nocompatible
filetype plugin on
filetype indent on
let mapleader = "\\"
syntax on
set number
set encoding=utf8
colorscheme codedark
"let g:airline_theme = 'codedark'
let g:user_emmet_leader_key='<C-Y>'
set expandtab
set tabstop=2
set shiftwidth=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set ruler
"autocmd vimenter * NERDTree
