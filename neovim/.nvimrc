call plug#begin('~/.vim/plugged')
    " General
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'christoomey/vim-tmux-navigator'
    " IDE plugins
    Plug 'scrooloose/nerdtree'
"    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/unite.vim'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'janko-m/vim-test'
    " Python specific
    Plug 'hdima/python-syntax'
call plug#end()

"
" Indentation
"
set textwidth=79        " Brake lines longer then 79 characters
set expandtab           " Use spaces instead of tabs
set softtabstop=4       " Indentation with TAB uses 4 spaces
set shiftwidth=4        " Indentation with >> uses 4 spaces
set shiftround          " Round indent to multiple of shiftwidth
set tabstop=4           " Show hard TAB as 4 columns wide
set autoindent          " Align new line to the previous one

"
" Interface
"
set number              " Enable line numbers
set relativenumber      " Make numbering relative to current line
set numberwidth=5       " Little wider
set cursorline          " Indicate current line
set ruler               " Enable cursor position indicator
set colorcolumn=+1      " Show vertical line at line break
syntax enable           " Enable syntax highlighting

" Colorscheme
let g:hybrid_use_Xresources = 1
colorscheme hybrid

"
" Search
"
set ignorecase
set smartcase

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

