" Use 2 spaces for shifting
set shiftwidth=2

" Enable JSX syntax in .js files
let g:jsx_ext_required = 0

" Choose standard as linter
let g:syntastic_javascript_checkers = ['eslint']

" Use local install of eslint
let s:eslint_path = system('npm-which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
