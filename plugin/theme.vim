set guifont=Monaco\ 12

if has('gui_running')
   " do something
else
   " if running in terminal
   " tell vim to use 256 colors
   set t_Co=256
endif

colorscheme evening
" colorscheme busybee
" colorscheme bvemu

nnoremap <leader>1 :colorscheme evening<cr>
nnoremap <leader>2 :colorscheme colorsbox-material<cr>
nnoremap <leader>3 :colorscheme jellybeans<cr>
nnoremap <leader>4 :colorscheme kolor<cr>
nnoremap <leader>5 :colorscheme strange<cr>
nnoremap <leader>6 :colorscheme lilypink<cr>
nnoremap <leader>7 :colorscheme flattr<cr>
nnoremap <leader>8 :colorscheme mango<cr>
nnoremap <leader>9 :colorscheme neverland2-darker<cr>
nnoremap <leader>0 :colorscheme beekai<cr>

" set background=dark

