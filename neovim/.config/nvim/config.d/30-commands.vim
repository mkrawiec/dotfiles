" SudoWrite command
command! -nargs=0 SudoWrite w !sudo tee % > /dev/null

" Format JSON files
command! JSONFormat %!python -m json.too
