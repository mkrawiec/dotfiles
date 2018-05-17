augroup DotfilesAutocmd
    autocmd!

    " Auto enter insert mode in popup terminal
    autocmd BufWinEnter,WinEnter popup-term startinsert
augroup END
