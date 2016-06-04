" Disable builtin auto formatting
set noautoindent
set nocindent

" Enable clang auto formatting
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1

" Code formatting conventions
let g:clang_format#code_style = 'chromium'
let g:clang_format#style_options = {
    \ "BreakBeforeBraces": "Linux",
    \ "IndentCaseLabels" : "true",
    \ "ColumnLimit" : "80",
    \ "SpaceBeforeParens" : "Never",
    \ "PointerAlignment" : "Right"
    \ }


let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'