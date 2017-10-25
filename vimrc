set number
set numberwidth=5
syntax on
set background=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'

call plug#end()

colorscheme base16-chalk
