" Use 2 spaces for shifting
set shiftwidth=2

" Enable JSX syntax in .js files
let g:jsx_ext_required = 0

" Use local install of eslint
let s:eslint_path = system('npm-which eslint')
let b:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost * Neomake
