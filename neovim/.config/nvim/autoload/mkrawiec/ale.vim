" Add ALE mappings in the buffer
fun! mkrawiec#ale#SetupMappings() abort
  nnoremap <silent><buffer><localleader>= :ALEFix<CR>
  nnoremap <buffer><localleader>gg :ALEGoToDefinition<CR>
  nnoremap <buffer><localleader>gt :ALEHover<CR>
  nnoremap <buffer><localleader>gu :ALEFindReferences<CR>
endf
