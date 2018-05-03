" only insert the longest common text
set completeopt+=longest

" enable deoplete by default
let g:deoplete#enable_at_startup = 1

" set completion type to manual
call deoplete#custom#option('auto_complete', v:false)

" remap tab as completion trigger
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction "}}}
