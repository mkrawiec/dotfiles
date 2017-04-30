#!/usr/bin/env bash

set -e

declare -r STOW_IGNORE='^stowignore|install.sh$'
declare -r DOTFILES_ROOT=`dirname $0`

# check if stow is installed
check_stow()
{
    command -v stow >/dev/null 2>&1 || {
        echo "GNU Stow is required for this script to run" >&2
        exit 1
    }
}

# check provided arguments
check_args()
{
    if [ $# -eq 0 ]; then
        echo "Choose at least one of the following presets:"
        ls -d $DOTFILES_ROOT/*/ | sed -e "s/[\.|\/]//g"
        exit 1
    fi
}

# display confirmation prompt
display_yes_no()
{
    read -p "Are sure you want to proceed? (y/n)" -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Aborted by user" >&2
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
            echo "-- Running install.sh for $f"
            bash "$file" -H || break
        fi
    done
}

check_stow
check_args
display_yes_no
pushd $DOTFILES_ROOT
    stow_files $@
    run_install_scripts $@
popd
