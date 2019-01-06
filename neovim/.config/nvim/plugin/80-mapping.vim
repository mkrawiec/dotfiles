" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" More consistent Y
nnoremap Y y$

" Replace search term under cursor, dot repeats the change.
nnoremap c* *Ncgn
nnoremap c# #NcgN

" Use lowercase s for surround
xmap s <Plug>VSurround

" Use <leader>w instead
nnoremap <C-w> <nop>

" Auto close tags with </ and insert within
inoremap </ </<C-x><C-o><Esc>vit<Esc>i

" Move cursor by display lines when wrapping
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Use the same exit mapping as insert mode
tnoremap <C-[> <C-\><C-n>

" Add movement bindings in terminal mode
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Remap gx to run selection in terminal
vnoremap <silent> gx :call mkrawiec#utils#ExecuteSelection('terminal')<CR>
nnoremap <silent> gx :.,$call mkrawiec#utils#ExecuteSelection('terminal')<CR>
