" Toggle terminal split window
fun! mkrawiec#term#TogglePreview() abort
  let l:buffer_name = 'popup-term'
  let l:win_number = bufwinnr(l:buffer_name)

  " check if window already open
  if l:win_number > 0
    exe l:win_number . 'wincmd c'
  else
    botright split | exe 'resize' . &previewheight

    " check if buffer exists
    if bufexists(l:buffer_name)
      exe 'buffer ' . l:buffer_name
    else
      terminal
      exe 'file ' . l:buffer_name

      " Disable line numbers
      setlocal nonumber norelativenumber

      " Close terminal window when leaving insert mode
      tnoremap <buffer><silent><C-[> <C-\><C-n>:call mkrawiec#term#TogglePreview()<CR>
    endif

    startinsert
  endif
endf

