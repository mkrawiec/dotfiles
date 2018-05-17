" leader keys
let mapleader = ' '
let maplocalleader = ','

" (-) general
nnoremap <leader><leader> :FzfCommands<CR>
nnoremap <silent><leader>' :call utils#ToggleTerm()<CR>

" (b) buffers
nnoremap <leader>bb :FzfBuffers<CR>
nnoremap <silent><leader>bd :bp\|bd #<CR>
nnoremap <silent><leader>bD :%bd\|e #<CR>
nnoremap <silent><leader>bn :bn<CR>
nnoremap <silent><leader>bN :enew<CR>
nnoremap <silent><leader>bp :bp<CR>
nnoremap <leader>bY ggVGy
nnoremap <leader>bP ggVGp

" (f) files
nnoremap <leader>fb :FzfMarks<CR>
nnoremap <leader>ff :FzfFiles<CR>
nnoremap <leader>fF :FzfGFiles<CR>
nnoremap <leader>fr :FzfHistory<CR>
nnoremap <silent><leader>fed :edit $MYVIMRC<CR>
nnoremap <silent><leader>feR :source $MYVIMRC \| runtime! plugin/**/*.vim<CR>
nnoremap <silent><leader>fs :write %<CR>
nnoremap <silent><leader>fS :SudoWrite<CR>
nnoremap <silent><leader>fo :silent !open %<CR>
nnoremap <silent><leader>fy :silent let @+=expand('%:p')<CR><C-g>
nnoremap <leader>fx :ExtEdit<space>

" (g) git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :Gstatus<CR>
nnoremap <leader>gp :call utils#PullThisBranch()<CR>
nnoremap <leader>gP :call utils#PushThisBranch()<CR>
nnoremap <leader>gS :Gwrite<CR>
nnoremap <leader>gl :FzfCommits<CR>
nnoremap <leader>gL :FzfBCommits<CR>
nmap <leader>gs <Plug>GitGutterStageHunk
nmap <leader>gu <Plug>GitGutterUndoHunk

" (h) help
nnoremap <leader>ht :FzfHelptags<CR>
nnoremap <leader>hm :FzfMaps<CR>

" (s) search
nnoremap <leader>sa :FzfAg<CR>
nnoremap <leader>sg :Ggrep -i<space>
nnoremap <silent><leader>sc :noh<CR>
nnoremap <leader>ss :FzfBLines<CR>
nnoremap <leader>sb :FzfLines<CR>
nnoremap <leader>sr :FzfHistory/<CR>

" (t) toggles
nnoremap <silent><leader>tc :call deoplete#toggle()<CR>:echo deoplete#is_enabled()<CR>
nnoremap <silent><leader>ts :set spell! spelllang=pl spell?<CR>
nnoremap <silent><leader>tn :set invnumber invrelativenumber<CR>
nnoremap <silent><leader>tp :set paste! paste?<CR>

" (w) window
nnoremap <leader>w <C-W>
nnoremap <leader>wq <nop>
nnoremap <silent><leader>wg :call utils#GoldenRatio()<CR>
nnoremap <silent><leader>wp :lclose \| pclose \| cclose<CR>
nnoremap <leader>wW :FzfWindows<CR>
