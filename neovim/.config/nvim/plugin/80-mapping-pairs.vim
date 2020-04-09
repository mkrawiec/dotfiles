" previous/next modification
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" previous/next location
nnoremap <silent> ]l :call mkrawiec#utils#ExeWithFallback('lnext', 'lfirst')<CR>
nnoremap <silent> [l :call mkrawiec#utils#ExeWithFallback('lprev', 'lfirst')<CR>

" previous/next quickfix
nnoremap <silent> ]q :call mkrawiec#utils#ExeWithFallback('cnext', 'cfirst')<CR>
nnoremap <silent> [q :call mkrawiec#utils#ExeWithFallback('cprev', 'cfirst')<CR>

" previous/next buffer
nnoremap <silent> ]b :bn<CR>
nnoremap <silent> [b :bp<CR>
