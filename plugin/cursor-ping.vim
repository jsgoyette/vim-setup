function! CursorPing()
	set cursorline cursorcolumn
	redraw
	sleep 200m
	set nocursorline nocursorcolumn
endfunction

command! CursorPing call CursorPing()

