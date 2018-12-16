call mkrawiec#ale#InitBuffer(['black'])

" (i) insert
nnoremap <silent><buffer><localleader>id oimport pdb; pdb.set_trace()<esc>
nnoremap <silent><buffer><localleader>iD Oimport pdb; pdb.set_trace()<esc>
