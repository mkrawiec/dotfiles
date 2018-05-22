# Set default editor
export EDITOR='nvim'

# Forgive spelling errors in cd
shopt -s cdspell

# Enable recursive glob with **
shopt -s globstar

# Avoid duplicates in history
HISTCONTROL="erasedups:ignoreboth"

# Ignore some commands in history
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Increase history size
HISTSIZE=500000
HISTFILESIZE=100000

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Trim long pwd in prompt
PROMPT_DIRTRIM=2

if [ -d ~/.bashrc.d ]; then
  for file in ~/.bashrc.d/*; do
    source $file
  done
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
