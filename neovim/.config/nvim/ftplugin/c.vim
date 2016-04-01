" Disable auto formatting
set noautoindent
set nocindent

let g:clang_format#code_style = 'webkit'
let g:clang_format#style_options = {
            \ "IndentCaseLabels" : "true",
            \ "ColumnLimit" : "80",
            \ "SpaceBeforeParens" : "Never",
            \ "PointerAlignment" : "Right"}

" Enable clang auto formatting
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1

" Use only make syntax checker
let g:syntastic_c_checkers = ['make']
