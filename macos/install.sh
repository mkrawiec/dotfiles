#!/usr/bin/env bash

set -e

declare -r SCRIPT_ROOT=`dirname $0`
declare -r STOWIGNORE_PATH="$SCRIPT_ROOT/stowignore"

# check if os is mac
check_if_mac()
{
    if [ "$(uname)" != "Darwin" ]; then
        echo "This configs only apply to macos"
        stow -D macos
        exit 1
    fi
}

# ask for the administrator password upfront
setup_sudo()
{
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until `.macos` has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

# run macos setup scripts
run_scripts()
{
    for f in $STOWIGNORE_PATH/script.d/*.sh; do
        bash "$f" "$STOWIGNORE_PATH" -H || break
    done
}

check_if_mac
setup_sudo
run_scripts
