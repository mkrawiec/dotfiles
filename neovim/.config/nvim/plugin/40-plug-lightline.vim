let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'LightlineGitBranch',
      \   'readonly': 'LightlineReadonly',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineGitBranch()
  let l:branch = fugitive#head()
  return l:branch !=# '' ? ' '.branch : ''
endfunction
