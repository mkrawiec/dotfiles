"
" vim-rooter
"
" Silence directory change messages
let g:rooter_silent_chdir = 1

" Mark dir as root when finding one of these files
let g:rooter_patterns = ['Dockerfile', 'package.json', '.editorconfig', '.git/']

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
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Stub out netrw's :Nread for spellcheck download to work
command! -nargs=1 Nread :call mkrawiec#utils#DownloadSpellfile("<args>")

"
" lightline.vim
"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'mkrawiec#lightlime#GitBranch',
      \   'readonly': 'mkrawiec#lightlime#Readonly',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
