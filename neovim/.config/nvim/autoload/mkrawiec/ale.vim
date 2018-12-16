" Initialize buffer with default ale config
fun! mkrawiec#ale#InitBuffer(fixers) abort
  " Set specified ale fixers
  let b:ale_fixers = a:fixers

  " Add ale mappings in the buffer
  nnoremap <silent><buffer><localleader>= :ALEFix<CR>
  nnoremap <buffer><localleader>gg :ALEGoToDefinition<CR>
  nnoremap <buffer><localleader>gt :ALEHover<CR>
  nnoremap <buffer><localleader>gu :ALEFindReferences<CR>
endf
