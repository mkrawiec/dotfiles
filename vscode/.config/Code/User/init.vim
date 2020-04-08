" (-) general
nnoremap Y y$
vnoremap > editor.action.indentLines
vnoremap < editor.action.outdentLines
nnoremap <leader><leader> workbench.action.showCommands
nnoremap <leader>' workbench.action.terminal.toggleTerminal
nnoremap <leader>= editor.action.formatDocument
nnoremap - breadcrumbs.focusAndSelect

" (][) pairs
nmap ]s workbench.action.editor.nextChange
nmap [s workbench.action.editor.previousChange
nmap ]l editor.action.marker.next
nmap [l editor.action.marker.prev
nmap ]q editor.action.marker.nextInFiles
nmap [q editor.action.marker.prevInFiles
nmap ]b workbench.action.nextEditorInGroup
nmap [b workbench.action.previousEditorInGroup
nmap ]m merge-conflict.next
nmap [m merge-conflict.previous

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
nnoremap <leader>fo revealFileInOS

nnoremap <leader>fed workbench.action.openSettings
nnoremap <leader>feR workbench.action.reloadWindow

" (g) git
nnoremap <leader>gg workbench.view.scm
nnoremap <leader>gc git.checkout
nnoremap <leader>gd git.openChange
nnoremap <leader>gi git.initialize
nnoremap <leader>gI git.ignore
nnoremap <leader>gb timeline.focus
nnoremap <leader>gp git.pullRebase
nnoremap <leader>gP git.push
nnoremap <leader>gS git.stage
nnoremap <leader>gU git.revert
nmap <leader>gs git.stageSelectedRanges
nmap <leader>gu git.revertSelectedRanges

" (p) project
nnoremap <leader>pp workbench.action.files.openFolder
nnoremap <leader>pr workbench.action.openRecent
nnoremap <leader>pc workbench.action.closeFolder
nnoremap <leader>pt workbench.action.tasks.configureTaskRunner

" (v) shrink/grow
nnoremap <leader>v editor.action.smartSelect.grow
nnoremap <leader>V editor.action.smartSelect.shrink

" (s) search
nnoremap <leader>sa workbench.action.findInFiles
nnoremap <leader>sr workbench.action.replaceInFiles
nnoremap <leader>sc :noh<CR>

" (w) window
nnoremap <leader>wp workbench.action.closeSidebar
nnoremap <leader>w= <C-w>=
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
