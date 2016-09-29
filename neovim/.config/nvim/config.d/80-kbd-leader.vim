" leader keys
nnoremap <Space> <nop>
let mapleader=' '
let maplocalleader=','

" (-) general
nnoremap <leader>: :Commands<CR>
nnoremap <leader>! :!<Space>
nnoremap <leader>' :terminal<CR>

" (b) buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bD :BufOnly<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bN :enew<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bY ggVGy
nnoremap <leader>bP ggVGp

" (f) files
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>fed :edit $MYVIMRC<CR>
nnoremap <leader>feR :source $MYVIMRC<CR>
nnoremap <leader>fE :SudoEdit<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fs :write %<CR>
nnoremap <leader>fy :let @+=expand('%:p')<CR>

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
nmap <leader>gn <Plug>GitGutterNextHunk
nmap <leader>gp <Plug>GitGutterPrevHunk

" (h) help/history
nnoremap <leader>hd :Helptags<CR>
nnoremap <leader>h: :History:<CR>
nnoremap <leader>h/ :History/<CR>

" (l) location
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>
nnoremap <leader>lt :call ToggleLocationList()<CR>

" (q) quickfix
nnoremap <leader>qt :call ToggleQuickfixList()<CR>

" (s) search
nnoremap <leader>sa :Ag
