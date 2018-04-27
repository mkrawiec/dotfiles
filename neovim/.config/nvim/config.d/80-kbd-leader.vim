" leader keys
let mapleader=' '
let maplocalleader=','

" (-) general
nnoremap <leader>: :Commands<CR>
nnoremap <leader>! :!<Space>
nnoremap <leader>@ @:
nnoremap <leader>' :call utils#ToggleTerm()<CR>

" (b) buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bp\|bd #<CR>
nnoremap <leader>bD :%bd\|e #<CR>
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
nnoremap <leader>fb :Marks<CR>
nnoremap <leader>ft :call utils#ToggleNetrw()<CR>
nnoremap <leader>fT :call utils#ToggleNetrw('%:p:h')<CR>
nnoremap <leader>fed :edit $MYVIMRC<CR>
nnoremap <leader>feR :source $MYVIMRC<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fs :write %<CR>
nnoremap <leader>fS :SudoWrite<CR>
nnoremap <leader>fo :silent !open %<CR>
nnoremap <leader>fy :silent let @+=expand('%:p')<CR><C-g>
nnoremap <leader>fx :ExtEdit<Space>

" (g) git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Git checkout<space>
nnoremap <leader>gC :Gcommit<CR>
nnoremap <leader>gg :Gstatus<CR>
nnoremap <leader>gl :Commits<CR>
nnoremap <leader>gL :BCommits<CR>
nnoremap <leader>gp :call utils#PullThisBranch()<CR>
nnoremap <leader>gP :call utils#PushThisBranch()<CR>
nnoremap <leader>gS :Gwrite<CR>:e<CR>
nmap <leader>gs <Plug>GitGutterStageHunk
nmap <leader>gu <Plug>GitGutterUndoHunk

" (h) help/history
nnoremap <leader>hh :History<CR>
nnoremap <leader>h: :History:<CR>
nnoremap <leader>h/ :History/<CR>
nnoremap <leader>ht :Helptags<CR>
nnoremap <leader>hm :Maps<CR>

" (i) text inserts
nnoremap <leader>is :Snippets<CR>
nnoremap <leader>ie :UltiSnipsEdit<CR>

" (s) search
nnoremap <leader>sa :Ag<CR>
nnoremap <leader>sg :Ggrep -i<space>
nnoremap <leader>sc :noh<CR>
nnoremap <leader>ss :BLines<CR>
nnoremap <leader>sb :Lines<CR>

" (t) toggles
nnoremap <leader>tc :call deoplete#toggle()<CR>
nnoremap <silent><leader>ts :set spell! spelllang=pl<CR>: set spell?<CR>
nnoremap <silent><leader>tw :set wrap!<CR>:set wrap?<CR>
nnoremap <silent><leader>tr :set relativenumber!<CR>:set relativenumber?<CR>

" (w) window
nnoremap <leader>w <C-W>
nnoremap <silent><leader>wp :lclose \| pclose \| cclose<CR>
nnoremap <leader>wg :GoldenRatioResize<CR>
nnoremap <leader>wW :Windows<CR>
