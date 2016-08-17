" trim white space off the ends of lines
fun! TrimWhiteSpace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfun

"command -bar -nargs=? TrimWhiteSpace call TrimWhiteSpace(<args>)
command! TrimWhiteSpace call TrimWhiteSpace()

" strip trailing space on save
" skip running for go since gofmt already trims space
" autocmd BufWritePre * if &ft!~?'go'|:call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

