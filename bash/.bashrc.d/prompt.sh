LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
NOCOLOR='\e[0m'
RESET='\e[0m\2'

prompt_command()
{
  # Last command status indicates the glyph color
  if [ $? == 0 ]; then
    bind "set vi-cmd-mode-string \1$LGREEN⊘\1$RESET"
    bind "set vi-ins-mode-string \1$LGREEN➜\1$RESET"
  else
    bind "set vi-cmd-mode-string \1$LRED⊘\1$RESET"
    bind "set vi-ins-mode-string \1$LRED➜\1$RESET"
  fi

  # Record each line as it gets issued
  history -a
}

prompt()
{
  echo -n "$LBLUE\w$NOCOLOR "
  echo -n '$(__git_ps1 "on $LPURPLE %s")'
  echo
  echo -n " $RESET"
}

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

PROMPT_COMMAND=prompt_command
PS1=`prompt`
