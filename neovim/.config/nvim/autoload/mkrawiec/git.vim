" Pull from 'origin <current>'
fun! mkrawiec#git#PullThisBranch()
  execute 'Gpull --autostash --rebase origin ' . fugitive#head()
endf

" Push to 'origin <current>'
fun! mkrawiec#git#PushThisBranch()
  execute 'Gpush origin ' . fugitive#head()
endf

