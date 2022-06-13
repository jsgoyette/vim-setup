syntax on
filetype plugin indent on
set nocompatible

set encoding=utf-8
set noswapfile
set confirm
set title

set cmdheight=2
set laststatus=2
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

set ts=4 sts=4 sw=4
set backspace=indent,eol,start

"set splitright
"set splitbelow

" boost performance of rendering long lines
set synmaxcol=300
set updatetime=500

" set language
try
  lang en_us
catch
endtry

" helper aliases
command! Q quit
command! W write

" disable Ex mode key
map Q <ESC>

" gitgutter
set updatetime=500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
let g:gitgutter_highlight_lines = 0

" Airline
let g:airline_extensions = ['branch']
let g:airline_theme='dark'

" rust racer
let g:racer_cmd = "/Users/jeremiahgoyette/.cargo/bin/racer"
let g:racer_experimental_completer = 1

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
"set rtp+=/usr/local/opt/fzf
