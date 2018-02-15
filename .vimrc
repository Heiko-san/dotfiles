" Enable folding
"set foldmethod=indent
set foldlevel=99
nnoremap <space> za
" tabstop options
set tabstop=4
set shiftwidth=4
set expandtab
" enable syntax highlighting
syntax on
" no smart/auto indent
set nosi noai
" no auto comments
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o
" readability for black shells
set background=dark
colorscheme koehler
" show matching brackets
set showmatch
" dont create backups
set nobackup
set nowb
set modeline
au BufRead,BufNewFile *.ino set filetype=cpp

"set relativenumber
"set number
"set mouse=a
"set clipboard=unnamedplus
set colorcolumn=80
