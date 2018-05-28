" Toggle terminal split window
fun! utils#ToggleTerm()
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
      tnoremap <buffer><silent><C-[> <C-\><C-n>:call utils#ToggleTerm()<CR>
    endif

    startinsert
  endif
endf

" Call another command if one failed
fun! utils#ExeWithFallback(command, fallback)
  try
    exe a:command
  catch
    try | exe a:fallback | catch | endtry
  endtry
endf

" Pull from 'origin <current>'
fun! utils#PullThisBranch()
  execute 'Gpull --autostash --rebase origin ' . fugitive#head()
endf

" Push to 'origin <current>'
fun! utils#PushThisBranch()
  execute 'Gpush origin ' . fugitive#head()
endf

fun! utils#GoldenRatio()
  wincmd =
  execute 'resize' . (winheight(0) * 5/4)
  execute 'vertical resize' . (winwidth(0) * 5/4)
endf
