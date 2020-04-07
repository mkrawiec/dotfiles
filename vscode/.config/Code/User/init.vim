" (-) general
nnoremap <leader><leader> workbench.action.showCommands
nnoremap <leader>' workbench.action.terminal.toggleTerminal
nnoremap <leader>= editor.action.formatDocument
nnoremap - breadcrumbs.focus

" (b) buffer
nnoremap <leader>bD workbench.action.closeOtherEditors
nnoremap <leader>bN workbench.action.files.newUntitledFile
nnoremap <leader>bP ggVGp
nnoremap <leader>bY ggVGy
nnoremap <leader>bb workbench.action.showAllEditors
nnoremap <leader>bd workbench.action.closeActiveEditor

" (f) files
nnoremap <leader>ff workbench.action.quickOpen
nnoremap <leader>fr workbench.action.openRecent
nnoremap <leader>fy workbench.action.files.copyPathOfActiveFile
nnoremap <leader>ft workbench.files.action.showActiveFileInExplorer
nnoremap <leader>fed workbench.action.openSettings
nnoremap <leader>feR workbench.action.reloadWindow

" (g) git
nnoremap <leader>gg workbench.view.scm
nnoremap <leader>gc git.checkout
nnoremap <leader>gi git.initialize
nnoremap <leader>gI git.ignore
nnoremap <leader>gb git.openChange
nnoremap <leader>gp git.pullRebase
nnoremap <leader>gP git.push
nnoremap <leader>gS git.stage
nnoremap <leader>gU git.unstage
nmap <leader>gs git.stageSelectedRanges
nmap <leader>gu git.unstageSelectedRanges

" (v) shrink/grow
nnoremap <leader>v editor.action.smartSelect.grow
nnoremap <leader>V editor.action.smartSelect.shrink

" (s) search
nnoremap <leader>sa workbench.action.findInFiles
nnoremap <leader>sc :noh<CR>

" (w) window
nnoremap <leader>w <C-w>
vnoremap > editor.action.indentLines
vnoremap < editor.action.outdentLines
