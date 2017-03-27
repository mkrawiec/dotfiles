"
" vim-airline
"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'hybridline'

"
" NERD Tree
"
" Don't display these kinds of files
let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '__pycache__']
"
" NERD Commenter
"
" Disable default mappings
let g:NERDCreateDefaultMappings = 0

"
" vim-hardtime
"
" Break habits
let g:hardtime_default_on = 1

" Disable arrow keys
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" ignore buffers
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]

"
" vim-rooter
"
" If no root detected change to the current dir
let g:rooter_change_directory_for_non_project_files = 'current'

"
" golden-ratio
"
" Do not resize automatically
let g:golden_ratio_autocommand = 0
