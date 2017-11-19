# ignore if non-interactive
if [[ $- != *i* ]]; then
    return
fi

# drop to fish shell
SHELL=$(which fish) exec $SHELL
