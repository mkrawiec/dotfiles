" (-) general
nnoremap Y y$
vnoremap > editor.action.indentLines
vnoremap < editor.action.outdentLines
nnoremap <leader><leader> workbench.action.showCommands
nnoremap <leader>' workbench.action.togglePanel
nnoremap <leader>= editor.action.formatDocument
nnoremap - breadcrumbs.focusAndSelect

" (][) pairs
nmap ]c workbench.action.editor.nextChange
nmap [c workbench.action.editor.previousChange
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
nnoremap <leader>fy workbench.action.files.copyPathOfActiveFile
nnoremap <leader>ft workbench.view.explorer
nnoremap <leader>fs workbench.action.files.save

" (fe) editor files
nnoremap <leader>fed workbench.action.openSettingsJson
nnoremap <leader>fek workbench.action.openGlobalKeybindingsFile
nnoremap <leader>feR workbench.action.reloadWindow

" (g) git
nnoremap <leader>gg workbench.view.scm
nnoremap <leader>gc git.checkout
nnoremap <leader>gd git.openChange
nnoremap <leader>gl timeline.focus
nnoremap <leader>gp git.pullRebase
nnoremap <leader>gP git.push
nnoremap <leader>gS git.stage
nmap <leader>gs git.stageSelectedRanges
nmap <leader>gu git.revertSelectedRanges

" (j) jump
nnoremap <leader>jd editor.action.goToTypeDefinition
nnoremap <leader>ji editor.action.goToImplementation
nnoremap <leader>jr editor.action.goToReferences

" (i) code interactions
nnoremap <leader>ig editor.action.sourceAction
nnoremap <leader>ii editor.action.quickFix
nnoremap <leader>ir editor.action.rename

" (p) project
nnoremap <leader>pp workbench.action.files.openFolder
nnoremap <leader>pr workbench.action.openRecent
nnoremap <leader>pc workbench.action.closeFolder
nnoremap <leader>pt workbench.action.tasks.openWorkspaceFileTasks
nnoremap <leader>pl workbench.action.debug.configure

" (v) shrink/grow
nnoremap <leader>v editor.action.smartSelect.grow
nnoremap <leader>V editor.action.smartSelect.shrink

" (r) run
nnoremap <leader>rb workbench.action.tasks.build
nnoremap <leader>rd workbench.action.debug.restart
nnoremap <leader>rr workbench.action.debug.run
nnoremap <leader>rk workbench.action.debug.terminateThread
nnoremap <leader>rt workbench.action.tasks.test
nnoremap <leader>rT workbench.action.tasks.runTask

" (s) search
nnoremap <leader>sa workbench.action.replaceInFiles
nnoremap <leader>se search.action.openNewEditor
nnoremap <leader>sc :noh<CR>

" (w) window
nnoremap <leader>wp workbench.action.closeSidebar
nnoremap <leader>w= <C-w>=
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>ww <C-w>w
nnoremap <leader>wj workbench.action.openView
nnoremap <leader>wg workbench.action.increaseViewSize
nnoremap <leader>wG workbench.action.decreaseViewSize
