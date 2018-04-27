" Disable help text banner
let g:netrw_banner = 0

" Open files in previously used window
let g:netrw_browse_split = 4

" Use 'open' command as system viewer
let g:netrw_browsex_viewer = 'open'

" Use tree style listing
let g:netrw_liststyle = 3

" Respect .gitingore and hide dotfiles
let g:netrw_list_hide = netrw_gitignore#Hide().'\(^\|\s\s\)\zs\.\S\+'

" Simplify sorting pattern
let g:netrw_sort_sequence = '[\/]$,*'

" Do not use error window
let g:netrw_use_errorwindow = 0

" Set absolute split size
let g:netrw_winsize = -28
