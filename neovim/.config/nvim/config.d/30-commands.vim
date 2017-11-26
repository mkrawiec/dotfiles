" SudoWrite command
command! -bar -nargs=0 SudoWrite :silent exe 'write !sudo tee % >/dev/null' | silent edit!

" Format JSON files
command! JSONFormat %!python -m json.tool

" Avoid annoing mistypes
command! WQ wq
command! Wq wq
command! W w
command! Q q
