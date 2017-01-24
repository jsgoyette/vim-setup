" Tell the GnuPG plugin to armor new files.
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1

augroup GnuPGExtra
	" Set extra file options.
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
	" Automatically close unmodified files after inactivity.
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
	" Set updatetime to 1 minute.
    set updatetime=60000
	" Fold at markers.
    set foldmethod=marker
	" Automatically close all folds.
    set foldclose=all
	" Only open folds with insert commands.
    set foldopen=insert
endfunction

nnoremap <leader>q :r!pwgen -yc1 22<CR>
