" Pull from 'origin <current>'
fun! mkrawiec#git#PullThisBranch() abort
  execute 'Gpull --autostash --rebase origin ' . fugitive#head()
endf

" Push to 'origin <current>'
fun! mkrawiec#git#PushThisBranch() abort
  execute 'Gpush origin ' . fugitive#head()
endf

