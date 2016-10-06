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

set clipboard+=unnamedplus  " Always use system clipboard

"
" Persistent undo
"
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
