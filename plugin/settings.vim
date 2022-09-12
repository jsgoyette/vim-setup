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

" vim-lsp
if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    "nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    "nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
"set rtp+=/usr/local/opt/fzf

let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1
