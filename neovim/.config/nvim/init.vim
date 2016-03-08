call plug#begin('~/.local/share/nvim/site/plugged')

" General
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'christoomey/vim-tmux-navigator'

" IDE plugins
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'ervandew/supertab'
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/unite.vim'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'janko-m/vim-test'

" Python
    Plug 'hdima/python-syntax', {'for': 'python'}

" Java
    Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
    Plug 'tfnico/vim-gradle'

call plug#end()

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
set hidden              " Allow

"
" Misc settings
"
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive when uc present

set noswapfile
set nobackup
set nowb

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
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['flake8']

let g:airline_powerline_fonts=1
let g:airline_theme = 'hybrid'
"
" Don't display these kinds of files
let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '__pycache__']


"
" Keyboard shotrcuts
"
let mapleader=','

" Toggle NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Select whole document
nnoremap <leader>a ggVG

" Cd to current file
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Running tests
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>s :TestSuite<CR>
nnoremap <silent> <leader>l :TestLast<CR>
nnoremap <silent> <leader>g :TestVisit<CR>

" Unite.vim dialogs
nnoremap <silent> <C-p> :Unite -start-insert file<CR>
nnoremap <silent> <C-o> :Unite buffer<CR>

