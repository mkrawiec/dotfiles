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
set clipboard+=unnamedplus  " Always use system clipboard

"
" Colorscheme
"
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark
colorscheme hybrid

"
" Indentation & folding
"
set expandtab           " Use spaces instead of tabs
set softtabstop=4       " Indentation with TAB uses 4 spaces
set shiftwidth=4        " Indentation with >> uses 4 spaces
set shiftround          " Round indent to multiple of shiftwidth
set foldmethod=indent   " Automatically create folds based on indentation
set foldlevelstart=99   " Expand all folds by default

"
" Windows & buffers
"
set splitright          " Puts new vsplit windows to the right of the current
set splitbelow          " Puts new split windows to the bottom of the current
set diffopt+=vertical   " Split vertical in diffs
set hidden              " Allow changing buffers with unsaved changes

"
" Case & search
"
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive when uppercase present
set infercase           " Case aware completion
set inccommand=nosplit  " Enable interactive search and replace

"
" Misc settings
"
set updatetime=100      " Reduce wait time for disc writes
set noswapfile          " Do not create .swp files
set nobackup            " Do not create ~ files
set nowb                " Prevent write backup
set nojoinspaces        " Don't insert double spaces in join command

" Use the_silver_searcher as backend for vimgrep
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

"
" Persistent undo
"
silent !mkdir ~/.local/share/nvim/backups > /dev/null 2>&1
set undodir=~/.local/share/nvim/backups
set undofile

"
" Highlight trailing whitespace
"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
