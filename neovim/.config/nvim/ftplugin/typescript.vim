"
" Formatting
"
set shiftwidth=2       " Use 2 spaces for shifting

"
" Keybindings
"

" (g) goto
" Go to definition
nnoremap <localleader>gg :TSDef<CR>
" Go to definition (preview)
nnoremap <localleader>gG :TSDefPreview<CR>
" Go spec.ts <-> .ts (toggle)
nnoremap <localleader>gs :e %:p:s,.spec.ts$,.X123X,:s,.ts$,.spec.ts,:s,.X123X$,.ts,<CR>
" Go to .html counterpart
nnoremap <localleader>gh :e %<.html<CR>
" Go to .scss counterpart
nnoremap <localleader>gc :e %<.scss<CR>
" Go to .ts counterpart
nnoremap <localleader>gt :e %<.ts<CR>

" (r) refactor
" Rename symbol under cursor
nnoremap <localleader>rr :TSRename<CR>
" Autoimport symbol under cursor
nnoremap <localleader>ri :TSImport<CR>

" (h) help
nnoremap <localleader>hd :TSDoc<CR>
nnoremap <localleader>ht :TSType<CR>

" (s) search
" Search symbol
nnoremap <localleader>ss :TSSearchFZF<CR>
" Search reference
nnoremap <localleader>sr :TSRefs<CR>

" (S) server
nnoremap <localleader>Sr :TSRestart<CR>
nnoremap <localleader>Sp :TSReloadProject<CR>
nnoremap <localleader>Se :TSEditConfig<CR>
