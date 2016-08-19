call plug#begin('~/.local/share/nvim/site/plugged')

" General
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" IDE plugins
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sleuth'
    Plug 'airblade/vim-gitgutter'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'Shougo/unite.vim'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'janko-m/vim-test'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/syntastic'
    Plug 'ajh17/VimCompletesMe'

" Python
    Plug 'hdima/python-syntax'

" JavaScript
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'flowtype/vim-flow'

" Other
    Plug 'sukima/xmledit'
    Plug 'elzr/vim-json'

call plug#end()
