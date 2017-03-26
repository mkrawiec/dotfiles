" leader keys
nnoremap <Space> <nop>
let mapleader=' '
let maplocalleader=','

" (-) general
nnoremap <leader>: :Commands<CR>
nnoremap <leader>! :!<Space>
nnoremap <leader>' :call utils#ToggleTerm()<CR>

" (b) buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bD :BufOnly<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bN :enew<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bY ggVGy
nnoremap <leader>bP ggVGp

" (c) compile / comment
nnoremap <leader>cc :Neomake!<CR>
map <leader>cl <Plug>NERDCommenterToggle
map <leader>cL <Plug>NERDCommenterInvert
map <leader>cy <Plug>NERDCommenterYank

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
nnoremap <silent> <leader>gf :NeomakeSh git fetch<CR>:bot copen<CR>
nnoremap <silent> <leader>gF :NeomakeSh git pull<CR>:bot copen<CR>
nnoremap <leader>gg :Gstatus<CR>
nnoremap <leader>gi :Git init<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>gL :BCommits<CR>
nnoremap <silent> <leader>gP :NeomakeSh git push<CR>:bot copen<CR>
nmap <leader>gs <Plug>GitGutterStageHunk
nnoremap <leader>gS :Gwrite<CR><CR>
nmap <leader>gu <Plug>GitGutterUndoHunk

" (h) help/history
nnoremap <leader>hd :Helptags<CR>
nnoremap <leader>h: :History:<CR>
nnoremap <leader>h/ :History/<CR>

" (s) search
nnoremap <silent> <leader>sa :Ag<CR>
nnoremap <silent> <leader>sc :noh<CR>
nnoremap <silent> <leader>sb :Lines<CR>
nnoremap <silent> <leader>sf :BLines<CR>

" (w) window
nnoremap <silent> <leader>wp :lclose \| pclose \| cclose<CR>
