" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" More consistent Y
nnoremap Y y$

" Remap lowercase s to surround
xmap s <Plug>VSurround
xmap S <Plug>VgSurround

" Use <leader> w instead
nnoremap <C-w> <nop>

" Add consistent movement bindings in terminal mode
tnoremap <C-[> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
