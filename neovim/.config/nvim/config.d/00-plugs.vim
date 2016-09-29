call plug#begin('~/.local/share/nvim/site/plugged')

" Themes
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

" Enhancements
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tpope/vim-sleuth'
    Plug 'milkypostman/vim-togglelist'
    Plug 'tpope/vim-repeat'
    Plug 'schickling/vim-bufonly'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

" IDE plugins
    Plug 'neomake/neomake'
    Plug 'Shougo/deoplete.nvim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'majutsushi/tagbar'
    Plug 'janko-m/vim-test'

" Python
    Plug 'hdima/python-syntax'

" JavaScript
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'flowtype/vim-flow'

call plug#end()
