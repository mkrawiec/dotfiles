" Use 2 spaces for shifting
set shiftwidth=2

"
" Deoplete
"
let g:deoplete#enable_at_startup = 1

"
" Neomake
"
let g:neomake_typescript_enabled_makers = ['tsc']

" Enable linter on buffer write
autocmd! BufWritePost * if !&diff | Neomake | endif
