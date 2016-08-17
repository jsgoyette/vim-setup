setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

autocmd BufWritePost * %retab <afile>

"colorscheme candy

command! BlockComment execute "norm! I/**\<cr> \<cr>/\<esc>k"
