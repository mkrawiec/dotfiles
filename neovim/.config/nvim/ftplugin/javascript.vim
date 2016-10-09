" Use 2 spaces for shifting
set shiftwidth=2

" Enable JSX syntax in .js files
let g:jsx_ext_required = 0

"
" Deoplete
"
" Configure external sources
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete'
\]

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

"
" Neomake
"
" Use local install of eslint
let s:eslint_path = system('npm-which eslint')
let b:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" Choose eslint as default maker
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

" Invoke NeoMake on buffers that are not diffs
autocmd! BufWritePost * if !&diff | Neomake | endif
