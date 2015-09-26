#!/usr/bin/env bash

DOT_PATH="$HOME/dotfiles/"

stow-all()
{
    pushd $DOT_PATH
    local to_stow=`ls -d */`

    stow --adopt $to_stow
    git checkout .

    popd
}

setup-services()
{
    systemctl --user enable mpd
    systemctl --user start mpd

    systemctl --user enable mpdscribble
    systemctl --user start mpdscribble
}

setup-vim()
{
    curl -fLo ~/.nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    nvim -E -c PlugInstall -c qall
}

main()
{
    if [ `whoami` == root ]; then
        echo "Run this as normal user"
        exit 1
    fi

    stow-all
    setup-services
    setup-vim
}

main $@
