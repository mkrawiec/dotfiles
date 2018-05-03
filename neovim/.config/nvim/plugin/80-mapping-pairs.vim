" previous/next modification
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" previous/next location
nnoremap <silent> ]l :call utils#ExeWithFallback('lnext', 'lfirst')<CR>
nnoremap <silent> [l :call utils#ExeWithFallback('lprev', 'lfirst')<CR>

" previous/next quickfix
nnoremap <silent> ]q :call utils#ExeWithFallback('cnext', 'cfirst')<CR>
nnoremap <silent> [q :call utils#ExeWithFallback('cprev', 'cfirst')<CR>
