" Show wertical column at 100 character
set textwidth=99
set colorcolumn=+1

" Disable builtin auto formatting
set noautoindent
set nocindent

"
" vim-clang-formatter
"

" Enable clang auto formatting
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1

" Code formatting conventions
let g:clang_format#code_style = 'chromium'
let g:clang_format#style_options = {
    \ 'Language' : 'Java',
    \ 'BreakBeforeBraces': 'Attach',
    \ 'ColumnLimit' : '100',
    \ }

"
" Javacomplete2
"

setlocal omnifunc=javacomplete#Complete

