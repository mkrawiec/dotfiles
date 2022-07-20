" Get readonly symbol
fun! mkrawiec#lightlime#Readonly() abort
  return &readonly ? '' : ''
endf

" Get git branch
fun! mkrawiec#lightlime#GitBranch() abort
  let l:branch = FugitiveHead()
  return l:branch !=# '' ? ' '.branch : ''
endf
