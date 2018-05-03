" SudoWrite command
command! -bar -nargs=0 SudoWrite :silent exe 'write !sudo tee % >/dev/null' | silent edit!

" Format JSON files
command! -nargs=0 JSONFormat %!python -m json.tool

" Edit filename with different extension
command! -nargs=1 ExtEdit :e %<.<args>

" Strip trailing witespace
command! -nargs=0 StripWhitespace :%s/\s\+$//

" Avoid annoing mistypes
command! WQ wq
command! Wq wq
command! W w
command! Q q
