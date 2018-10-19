" (-) general
nnoremap <silent><buffer><localleader>= :ALEFix<CR>

" (g) goto
nnoremap <buffer><localleader>gg :ALEGoToDefinition<CR>
nnoremap <buffer><localleader>gt :ALEHover<CR>
nnoremap <buffer><localleader>gu :ALEFindReferences<CR>

" (i) insert
nnoremap <silent><buffer><localleader>id oimport pdb; pdb.set_trace()<esc>
nnoremap <silent><buffer><localleader>iD Oimport pdb; pdb.set_trace()<esc>
