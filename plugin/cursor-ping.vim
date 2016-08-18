fun! CursorPing()
	set cursorline cursorcolumn
	redraw
	sleep 200m
	set nocursorline nocursorcolumn
endfun

command! CursorPing call CursorPing()
