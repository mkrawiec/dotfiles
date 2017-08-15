"
" Formatting
"
set shiftwidth=2       " Use 2 spaces for shifting

"
" Keybindings
"

" (g) goto
nnoremap <localleader>gg :TSDef<CR>
nnoremap <localleader>gG :TSSearchFZF
nnoremap <localleader>gp :TSDefPreview<CR>
nnoremap <localleader>gt :TSTypeDef<CR>
nnoremap <localleader>gr :TSRefs<CR>

" (r) refactor
nnoremap <localleader>rr :TSRename<CR>
nnoremap <localleader>ri :TSImport<CR>

" (h) help
nnoremap <localleader>hd :TSDoc<CR>
nnoremap <localleader>ht :TSType<CR>

" (S) server
nnoremap <localleader>Sr :TSRestart<CR>
nnoremap <localleader>Sp :TSReloadProject<CR>
nnoremap <localleader>Se :TSEditConfig<CR>

"
" Linter
"

" Use version installed to local node_modules
let s:tslint_path = system('npm-which tslint')
let b:neomake_typescript_tslint_exe = substitute(s:tslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" Enable linter on buffer write
autocmd! BufWritePost * if !&diff | Neomake | endif
