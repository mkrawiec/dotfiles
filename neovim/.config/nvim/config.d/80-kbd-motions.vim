" previous/next modification
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" previous/next location
nnoremap <silent> ]l :call errmov#lnext()<CR>
nnoremap <silent> [l :call errmov#lprev()<CR>

" previous/next quickfix
nnoremap <silent> ]q :call errmov#cnext()<CR>
nnoremap <silent> [q :call errmov#cprev()<CR>
