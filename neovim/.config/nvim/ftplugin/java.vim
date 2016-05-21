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

" Keybindings
nmap <buffer> <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <buffer> <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <buffer> <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <buffer> <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

imap <buffer> <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <buffer> <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <buffer> <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <C-M-i> <Plug>(JavaComplete-Imports-AddMissing)
imap <C-M-i> <Plug>(JavaComplete-Imports-AddMissing)
nmap <C-M-o> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-M-o> <Plug>(JavaComplete-Imports-RemoveUnused)

"
" vim-android
"

" Display status line
call airline#parts#define_function('vim-gradle-status', 'gradle#statusLine')
let g:airline_section_x= airline#section#create_right(['tagbar', 'filetype', 'vim-gradle-status'])

" Run gradle in daemon mode
let g:gradle_daemon=1

" Set glyph symbols
let g:gradle_glyph_android = ''
let g:gradle_glyph_gradle = ''
let g:gradle_glyph_error = ''
let g:gradle_glyph_warning = ''

" Show gradle quickfix window automatically
"let g:gradle_quickfix_show=1