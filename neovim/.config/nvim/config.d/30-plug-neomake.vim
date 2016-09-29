autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_list_height = 5
let g:neomake_error_sign = {
      \ 'text': '✗',
      \ 'texthl': 'SpellBad',
      \ }
let g:neomake_warning_sign = {
      \ 'text': '⚠',
      \ 'texthl': 'SpellCap',
      \ }
let g:neomake_message_sign = {
      \ 'text': '⚡',
      \ 'texthl': 'SpellRare',
      \ }
let g:neomake_info_sign = {
      \ 'text': 'ℹ',
      \ 'texthl': 'SpellLocal',
      \ }
