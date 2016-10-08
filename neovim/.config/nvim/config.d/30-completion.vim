" only insert the longest common text
set completeopt+=longest

" (VimCompletesMe) set default <TAB> completion method
let b:vcm_tab_complete = 'omni'

" auto close preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
