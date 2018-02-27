# Configuration specific to mkrawiec-mbp hostname

# Use gnu version of coreutils
set -U fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# Setup links to neovim
alias vi nvim
alias vim nvim

# Virtualfish support
eval (python3 -m virtualfish)
