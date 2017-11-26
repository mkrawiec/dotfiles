call plug#begin('~/.local/share/nvim/site/plugged')

    " Themes
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Enhancements
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'takac/vim-hardtime'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'schickling/vim-bufonly'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'ajh17/VimCompletesMe'
    Plug 'roman/golden-ratio'

    " IDE plugins
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'w0rp/ale'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'airblade/vim-rooter'
    Plug 'SirVer/ultisnips'
    Plug 'editorconfig/editorconfig-vim'

    " Syntax
    Plug 'hdima/python-syntax'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'leafgarland/typescript-vim'

    " TypeScript
    Plug 'mhartington/nvim-typescript'
call plug#end()
