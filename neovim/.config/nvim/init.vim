source ~/.config/nvim/plugs.vim

"
" Interface
"
set virtualedit=onemore " Allow for cursor beyond last character
set number              " Enable line numbers
set relativenumber      " Make numbering relative to current line
set showmatch           " Show matching brackets/parenthesis
set numberwidth=5       " Little wider
set cursorline          " Indicate current line
set ruler               " Enable cursor position indicator
set colorcolumn=80      " Show vertical line at line break
syntax enable           " Enable syntax highlighting

"
" Colorscheme
"
let g:hybrid_custom_term_colors = 1
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
" Plugin options
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = '⚡'

let g:airline_powerline_fonts=1
let g:airline_theme = 'hybridline'

" Don't display these kinds of files
let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '__pycache__']

" Use omnicompletion by default for certain filetype
autocmd FileType xml let b:vcm_tab_complete = 'omni'

" SudoWrite command
command! -nargs=0 SudoWrite w !sudo tee % > /dev/null

" Format JSON files
command! JSONFormat %!python -m json.tool

" Prevent annoing mistypes
command! WQ wq
command! Wq wq
command! W w
command! Q q

source ~/.config/nvim/kbd.vim
