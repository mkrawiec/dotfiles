#!/usr/bin/env bash

set -e

declare -r STOW_IGNORE='^stowignore|install.sh$'
declare -r DOTFILES_ROOT=`dirname $0`

# display confirmation prompt
display_yes_no()
{
    read -p "Are sure you want to proceed? (y/n)" -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Aborted by user"
        exit 1
    fi
}

# create symlinks using gnu stow
stow_files()
{
    stow --ignore=$STOW_IGNORE $@
}

# run install script for individual dirs
run_install_scripts()
{
    for f in $@; do
        local file="./$f/install.sh"

        if [ -f $file ]; then
            echo "Running install.sh for $f"
            bash "$file" -H || break
        fi
    done
}

display_yes_no
pushd $DOTFILES_ROOT
    stow_files $@
    run_install_scripts $@
popd
