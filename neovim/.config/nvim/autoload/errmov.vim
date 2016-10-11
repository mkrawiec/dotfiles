fun! s:DefaultToFirst(command, first)
  try
    exe a:command
  catch
    try | exe a:first | catch | endtry
  endtry
endf

fun! errmov#lnext()
  call s:DefaultToFirst('lnext', 'lfirst')
endf

fun! errmov#lprev()
  call s:DefaultToFirst('lprev', 'lfirst')
endf

fun! errmov#cnext()
  call s:DefaultToFirst('cnext', 'cfirst')
endf

fun! errmov#cprev()
  call s:DefaultToFirst('cprev', 'cfirst')
endf
