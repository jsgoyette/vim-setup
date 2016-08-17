" unite
nnoremap <space>f :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>

let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"

" let g:unite_source_history_yank_enable = 1
"nnoremap <space>y :Unite history/yank<cr>

set runtimepath+=~/path/to/vimproc
set runtimepath+=~/path/to/unite.vim
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
    \ '-i --vimgrep --smart-case --nocolor --nogroup --follow --hidden ' .
    \ '--ignore ''.git'' --ignore ''.meteor'' --ignore ''node_modules'''
  let g:unite_source_grep_recursive_opt = ''
endif

