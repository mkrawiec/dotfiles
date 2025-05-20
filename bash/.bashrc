# Set default editor
export EDITOR='nvim'

# Add local binaries to PATH
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Use en_US locale with UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Forgive spelling errors in 'cd' paths
shopt -s cdspell

# Enable recursive glob with **
shopt -s globstar

# Avoid duplicates and erase older duplicates in history
HISTCONTROL="erasedups:ignoreboth"

# Ignore common trivial commands in history
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Expand history capacity
HISTSIZE=500000
HISTFILESIZE=100000

# Trim long paths in prompt
PROMPT_DIRTRIM=2

if [ -d ~/.bashrc.d ]; then
  for file in ~/.bashrc.d/*; do
    source $file
  done
fi

# Evaluate custom dircolors
eval `dircolors ~/.dircolors`

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(mise activate bash)"
