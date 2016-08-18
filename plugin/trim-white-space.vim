" trim white space off the ends of lines
fun! TrimWhiteSpace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfun

" trim trailing empty lines at the end of the file
fun! TrimTrailingLines()
	let l:save_cursor = getpos('.')
	%v/\_s*\S/d
	call setpos('.', l:save_cursor)
endfun

command! TrimWhiteSpace call TrimWhiteSpace()
command! TrimTrailingLines call TrimTrailingLines()

" strip trailing space on save
autocmd BufWritePre * :call TrimWhiteSpace()

" remove trailing empty lines on save
autocmd BufWritePre * :call TrimTrailingLines()
