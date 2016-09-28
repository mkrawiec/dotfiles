" leader keys
nnoremap <Space> <nop>
let mapleader=' '
let maplocalleader=','

" (-) general
nnoremap <leader>: :Commands<CR>
nnoremap <leader>! :!<Space>
nnoremap <leader>' :terminal<CR>

" (g) git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<Space>
nnoremap <leader>gC :Git checkout<Space>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gf :Gfetch<CR>
nnoremap <leader>gF :Gpull<CR>
nnoremap <leader>gg :Gstatus<CR>
nnoremap <leader>gi :Git init<CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gP :Gpush<CR>
nmap <leader>gs <Plug>GitGutterStageHunk
nnoremap <leader>gS :Gwrite<CR><CR>
nmap <leader>gu <Plug>GitGutterUndoHunk
nmap <leader>gh <Plug>GitGutterNextHunk
nmap <leader>gH <Plug>GitGutterPrevHunk

" (f) file
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>fed :edit $MYVIMRC<CR>
nnoremap <leader>feR :source $MYVIMRC<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fs :write %<CR>

" (b) buffer
nnoremap <silent> <leader>bb :Buffers<CR>
nnoremap <leader>bY ggVGy

" (h) help
nnoremap <leader>hd :Helptags<CR>

" Disable lame arrows
noremap <PageUp> <Nop>
noremap <PageDown> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap! <PageUp> <Esc>
noremap! <PageDown> <Esc>
noremap! <Up> <Esc>
noremap! <Down> <Esc>
noremap! <Left> <Esc>
noremap! <Right> <Esc>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" More consistent Y
nnoremap Y y$
