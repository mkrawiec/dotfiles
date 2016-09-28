source ~/.config/nvim/plugs.vim

"
" Interface
"
set virtualedit=onemore " Allow for cursor beyond last character
set number              " Enable line numbers
set relativenumber      " Make numbering relative to current line
set showmatch           " Show matching brackets/parenthesis
set cursorline          " Indicate current line
set ruler               " Enable cursor position indicator
set colorcolumn=80      " Show vertical line at line break
syntax enable           " Enable syntax highlighting

"
" Colorscheme
"
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark
colorscheme hybrid

"
" Indentation & formatting
"
set expandtab           " Use spaces instead of tabs
set softtabstop=4       " Indentation with TAB uses 4 spaces
set shiftwidth=4        " Indentation with >> uses 4 spaces
set shiftround          " Round indent to multiple of shiftwidth
set tabstop=4           " Show hard TAB as 4 columns wide
set autoindent          " Align new line to the previous one

"
" Windows & buffers
"
set splitright          " Puts new vsplit windows to the right of the current
set splitbelow          " Puts new split windows to the bottom of the current
set diffopt+=vertical   " Split vertical in diffs
set hidden              " Allow

set timeoutlen=1000
set ttimeoutlen=0

"
" Misc settings
"
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive when uppercase present

set noswapfile          " Do not create .swp files
set nobackup            " Do not create ~ files
set nowb                " Prevent write backup

set autochdir           " Auto change dir to current file
set clipboard+=unnamedplus  " Always use system clipboard

"
" Persistent undo
"
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"
" Commands
"
" SudoWrite command
command! -nargs=0 SudoWrite w !sudo tee % > /dev/null

" Format JSON files
command! JSONFormat %!python -m json.tool

" Prevent annoing mistypes
command! WQ wq
command! Wq wq
command! W w
command! Q q

"
" Plugin options
"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'hybridline'

let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0
highlight link GitGutterAdd             DiffAdd
highlight link GitGutterChange          DiffChange
highlight link GitGutterDelete          DiffDelete
highlight link GitGutterChangeDelete    DiffText

" Don't display these kinds of files
let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '__pycache__']

autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_list_height = 5
let g:neomake_error_sign = {
      \ 'text': '✗',
      \ 'texthl': 'SpellBad',
      \ }
let g:neomake_warning_sign = {
      \ 'text': '⚠',
      \ 'texthl': 'SpellCap',
      \ }
let g:neomake_message_sign = {
      \ 'text': '⚡',
      \ 'texthl': 'SpellRare',
      \ }
let g:neomake_info_sign = {
      \ 'text': 'ℹ',
      \ 'texthl': 'SpellLocal',
      \ }

source ~/.config/nvim/kbd.vim
