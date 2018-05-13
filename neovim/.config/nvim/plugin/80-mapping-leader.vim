" leader keys
let mapleader = ' '
let maplocalleader = ','

" (-) general
nnoremap <silent> <leader><leader> :FzfCommands<CR>
nnoremap <silent> <leader>' :call utils#ToggleTerm()<CR>

" (b) buffers
nnoremap <silent> <leader>bb :FzfBuffers<CR>
nnoremap <silent> <leader>bd :bp\|bd #<CR>
nnoremap <silent> <leader>bD :%bd\|e #<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bN :enew<CR>
nnoremap <silent> <leader>bp :bp<CR>
nnoremap <silent> <leader>bY ggVGy
nnoremap <silent> <leader>bP ggVGp

" (f) files
nnoremap <silent> <leader>fb :FzfMarks<CR>
nnoremap <silent> <leader>fed :edit $MYVIMRC<CR>
nnoremap <silent> <leader>feR :source $MYVIMRC \| runtime! plugin/**/*.vim<CR>
nnoremap <silent> <leader>ff :FzfFiles<CR>
nnoremap <silent> <leader>fF :FzfGFiles<CR>
nnoremap <silent> <leader>fr :FzfHistory<CR>
nnoremap <silent> <leader>fs :write %<CR>
nnoremap <silent> <leader>fS :SudoWrite<CR>
nnoremap <silent> <leader>fo :silent !open %<CR>
nnoremap <silent> <leader>fy :silent let @+=expand('%:p')<CR><C-g>
nnoremap <leader>fx :ExtEdit<space>

" (g) git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Git checkout<space>
nnoremap <leader>gC :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :Gstatus<CR>
nnoremap <silent> <leader>gl :FzfCommits<CR>
nnoremap <silent> <leader>gL :FzfBCommits<CR>
nnoremap <silent> <leader>gp :call utils#PullThisBranch()<CR>
nnoremap <silent> <leader>gP :call utils#PushThisBranch()<CR>
nnoremap <silent> <leader>gS :Gwrite<CR>
nmap <silent> <leader>gs <Plug>GitGutterStageHunk
nmap <silent> <leader>gu <Plug>GitGutterUndoHunk

" (h) help
nnoremap <silent> <leader>ht :FzfHelptags<CR>
nnoremap <silent> <leader>hm :FzfMaps<CR>

" (s) search
nnoremap <silent> <leader>sa :FzfAg<CR>
nnoremap <leader>sg :Ggrep -i<space>
nnoremap <silent> <leader>sc :noh<CR>
nnoremap <silent> <leader>ss :FzfBLines<CR>
nnoremap <silent> <leader>sb :FzfLines<CR>
nnoremap <silent> <leader>sr :FzfHistory/<CR>

" (t) toggles
nnoremap <leader>tc :call deoplete#toggle()<CR>
nnoremap <silent> <leader>ts :set spell! spelllang=pl spell?<CR>
nnoremap <silent> <leader>tn :set invnumber invrelativenumber<CR>

" (w) window
nnoremap <silent> <leader>w <C-W>
nnoremap <silent> <leader>wg :GoldenRatioResize<CR>
nnoremap <silent> <leader>wp :lclose \| pclose \| cclose<CR>
nnoremap <silent> <leader>wW :FzfWindows<CR>
