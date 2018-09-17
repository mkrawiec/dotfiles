"
" vim-airline
"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'hybridline'

"
" vim-rooter
"
" If no root detected change to the current dir
let g:rooter_change_directory_for_non_project_files = 'current'

" Silence directory change messages
let g:rooter_silent_chdir = 1

"
" golden-ratio
"
" Do not resize automatically
let g:golden_ratio_autocommand = 0

"
" fzf.vim
"
let g:fzf_command_prefix = 'Fzf'

"
" vim-dirvish
"
" Put directories on top of the listing
let g:dirvish_mode = ':sort | sort ,^.*[\/],'

"
" netrw
"
" Prevent netrw from being loaded
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
