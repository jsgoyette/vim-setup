syntax on
filetype plugin indent on
set nocompatible

set encoding=utf-8
set noswapfile
set confirm
set title

set cmdheight=2
set laststatus=2
"set cursorline
set ruler
set nohlsearch
set incsearch
set showmatch
set matchtime=2

set number
set numberwidth=3
set relativenumber

set ttimeoutlen=50
set autoread
set clipboard=unnamed
set hidden

set scrolljump=1
set scroll=10

set ts=4 sts=4 sw=4
set backspace=indent,eol,start

set splitright
set splitbelow

" boost performance of rendering long lines
set synmaxcol=300
set updatetime=500

" set language
try
  lang en_us
catch
endtry

autocmd Filetype php setlocal ts=4 sts=4 sw=4
