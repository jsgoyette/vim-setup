" disable arrow keys
" inoremap <esc>   <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
nnoremap <down>  <nop>

" the problem with , as leader is that it messes it up as
" previous in a character find
" let mapleader=","
" and so we use the default "/"

"===============================================================================
"" Visual Mode Key Mappings
"===============================================================================
"
" <|>: Reselect visual block after indent
" though better to use < and repeat with .
" xnoremap < <gv
" xnoremap > >gv

vnoremap <leader>k :m-2<CR>gv
vnoremap <leader>j :m'>+1<CR>gv

"===============================================================================
"" Normal Mode Meta/Alt Key Mappings
"===============================================================================

nnoremap <leader>b :bn<CR>
nnoremap <leader>dd :bd<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>l :set hlsearch!<CR>

"===============================================================================
"" Commands
"===============================================================================

cmap w!! w !sudo tee % >/dev/null

command! Q quit
command! W write

