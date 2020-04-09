call plug#begin('~/.local/share/nvim/plugged')
  " Themes
  Plug 'w0ng/vim-hybrid'
  Plug 'itchyny/lightline.vim'

  " Enhancements
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'Yggdroot/indentLine'
  Plug 'justinmk/vim-dirvish'

  " IDE plugins
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'
  Plug 'editorconfig/editorconfig-vim'

  " Syntax
  Plug 'hdima/python-syntax'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'leafgarland/typescript-vim'
call plug#end()
