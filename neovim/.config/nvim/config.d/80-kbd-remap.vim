" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" More consistent Y
nnoremap Y y$

" Remap lowercase s to surround
xmap s <Plug>VSurround
xmap S <Plug>VgSurround

" Exit to normal mode in terminal
tnoremap <C-[> <C-\><C-n>
