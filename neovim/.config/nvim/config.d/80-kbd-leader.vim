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
nnoremap <leader>cc :make<CR>
map <leader>cl <Plug>NERDCommenterToggle
map <leader>cL <Plug>NERDCommenterInvert
map <leader>cy <Plug>NERDCommenterYank

" (f) files
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>fT :NERDTreeFind<CR>
nnoremap <leader>fed :edit $MYVIMRC<CR>
nnoremap <leader>feR :source $MYVIMRC<CR>
nnoremap <leader>fE :SudoEdit<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fs :write %<CR>
nnoremap <leader>fy :let @+=expand('%:p')<CR>

" (g) git
nnoremap <leader>g: :Gina<Space>
nnoremap <leader>gg :Gina status -s<CR>
nnoremap <leader>gb :Gina blame<CR>
nnoremap <leader>gd :Gina compare<CR>
nnoremap <leader>gD :Gina chaperon<CR>
nnoremap <leader>gl :Gina log<CR>
nnoremap <leader>gc :Gina branch<CR>
nnoremap <leader>gC :Gina commit<CR>
nnoremap <leader>gi :Gina! init<CR>
nnoremap <leader>gp :Gina! pull --ff-only<CR>
nnoremap <leader>gP :Gina! push<CR>
nnoremap <leader>gS :Gina! add %<CR>:e %<CR>
nnoremap <leader>gU :Gina! reset -q %<CR>:e %<CR>
nmap <leader>gs <Plug>GitGutterStageHunk
nmap <leader>gu <Plug>GitGutterUndoHunk

" (h) help/history
nnoremap <leader>hd :Helptags<CR>
nnoremap <leader>h: :History:<CR>
nnoremap <leader>h/ :History/<CR>

" (s) search
nnoremap <silent> <leader>sa :Ag<CR>
nnoremap <silent> <leader>sg :Gina grep<CR>
nnoremap <silent> <leader>sc :noh<CR>
nnoremap <silent> <leader>sb :Lines<CR>
nnoremap <silent> <leader>sf :BLines<CR>

" (w) window
nnoremap <silent> <leader>wp :lclose \| pclose \| cclose<CR>
nnoremap <leader>wg :GoldenRatioResize<CR>
