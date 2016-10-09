" Toggle terminal split window
fun! termsplit#toggle()
    let l:buffer_name = 'popup-term'
    let l:win_number = bufwinnr(l:buffer_name)

    " check if window already open
    if l:win_number > 0
        exe l:win_number . 'wincmd c'
    else
        split | resize 10

        " check if buffer exists
        if bufexists(l:buffer_name)
            exe 'buffer ' . l:buffer_name
        else
            terminal
            exe 'file ' . l:buffer_name
        endif
    endif
endf
