unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
call plug#end()

set viminfo+=n~/.vim/viminfo
set encoding=utf-8

" Colours
if filereadable(expand("~/.vim/vimrc_background"))
  let base16colorspace=256
  source ~/.vim/vimrc_background
endif

set background=dark
syntax enable

" Tab-Completion
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-u>"

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_signs=1

" Indentation
set tabstop=4 " Visual tab size
set softtabstop=4 " How many spaces are inserted
set shiftwidth=4
set expandtab " Turns tabs into spaces
filetype plugin indent on

" UI and such
set ruler
set number
"set numberwidth=5 " Line width of numbers
set wildmenu " visual autocomplete menu
set showmatch
set lazyredraw " not so sure about this one
set mouse=a

" Line Wrapping
set wrap
" set tw=79
" set cc=80

" Searching
set incsearch " search as typing search expression

