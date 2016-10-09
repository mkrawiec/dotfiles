" Use 2 spaces for shifting
set shiftwidth=2

"
" Neomake
"
" Use tsconf.json from current dir
function! neomake#makers#ft#typescript#tsc()
    return {
        \ 'args': ['--project', getcwd(), '--noEmit'],
        \ 'append_file': 0,
        \ 'errorformat':
        \   '%E%f %#(%l\,%c): error %m,' .
        \   '%E%f %#(%l\,%c): %m,' .
        \   '%Eerror %m,' .
        \   '%C%\s%\+%m'
        \ }
endfunction

let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']

" Enable linter on buffer write
autocmd! BufWritePost * if !&diff | Neomake | endif
