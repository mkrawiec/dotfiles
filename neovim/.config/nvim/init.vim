let vimsettings = '~/.config/nvim/config.d'

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
    exe 'source' fpath
endfor
