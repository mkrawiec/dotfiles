"
" Keybindings
"

" (-) general
nnoremap <silent><buffer><localleader>= :ALEFix<CR>

" (g) goto
nnoremap <buffer><localleader>gg :TSDef<CR>
nnoremap <buffer><localleader>gt :TSTypeDef<CR>
nnoremap <buffer><localleader>gu :TSRefs<CR>

" (r) refactor
nnoremap <buffer><localleader>rr :TSRename<CR>
nnoremap <buffer><localleader>ri :TSImport<CR>
nnoremap <buffer><localleader>rI :TSSortImports<CR>
nnoremap <buffer><localleader>re :TSExtractFunction<CR>

" (h) help
nnoremap <buffer><localleader>hd :TSDoc<CR>
nnoremap <buffer><localleader>ht :TSType<CR>

" (S) server
nnoremap <buffer><localleader>Sr :TSRestart<CR>
nnoremap <buffer><localleader>Sp :TSReloadProject<CR>
nnoremap <buffer><localleader>Se :TSEditConfig<CR>
