" Call another command if one failed
fun! mkrawiec#utils#ExeWithFallback(command, fallback) abort
  try
    exe a:command
  catch
    try | exe a:fallback | catch | endtry
  endtry
endf

" Make current window golden ratio sized
fun! mkrawiec#utils#GoldenRatio() abort
  wincmd =
  execute 'resize' . (winheight(0) * 5/4)
  execute 'vertical resize' . (winwidth(0) * 5/4)
endf

" Execute visual selection with given command
fun! mkrawiec#utils#ExecuteSelection(command) abort range
  execute a:firstline . ',' . a:lastline . 'j'
  let l:line_concat = getline('.')

  if a:firstline != a:lastline
    normal u
  endif

  execute a:command . ' ' . l:line_concat
endf

" Open persistant scratch buffer
fun! mkrawiec#utils#OpenScratch() abort
  edit ~/.local/share/nvim/scratch.md
  setlocal bufhidden=delete autowriteall
endf

" Download spellcheck file
fun! mkrawiec#utils#DownloadSpellfile(url)
    let l:spell_dir = spellfile#WritableSpellDir()
    exe "!cd " . l:spell_dir . ' && curl -fO '. a:url
endf
