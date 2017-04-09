" SudoWrite command
command! -nargs=0 SudoWrite w !sudo tee % > /dev/null

" Format JSON files
command! JSONFormat %!python -m json.tool

" Avoid annoing mistypes
command! WQ wq
command! Wq wq
command! W w
command! Q q
