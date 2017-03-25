"
" Formatting
"
set shiftwidth=2       " Use 2 spaces for shifting

"
" Keybindings
"

" (g) goto
nnoremap <localleader>gg :TSDef<CR>
nnoremap <localleader>gp :TSDefPreview<CR>
nnoremap <localleader>gu :TSRefs<CR>

" (h) help
nnoremap <localleader>hd :TSDoc<CR>
nnoremap <localleader>ht :TSType<CR>

" (S) server
nnoremap <localleader>Sr :TSRestart<CR>

"
" Linter
"

" Enable linter on buffer write
autocmd! BufWritePost * if !&diff | Neomake | endif
