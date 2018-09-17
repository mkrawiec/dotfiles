augroup DotfilesAutocmd
    autocmd!

    " Auto enter insert mode in popup terminal
    autocmd BufWinEnter,WinEnter popup-term startinsert

    " When terminal buffer ends allow to close it
    autocmd TermClose * noremap <buffer><C-d> :bd!<CR>
    autocmd TermClose * noremap <buffer><leader>bd :bd!<CR>
augroup END
