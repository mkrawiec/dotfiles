LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
LWHITE='\033[01;37m'
RESET='\e[0m'

CHAR_NORMAL_MODE=$'\u2298'
CHAR_INSERT_MODE=$'\u279C'
CHAR_GIT_BRANCH=$'\uE0A0'

prompt_command()
{
  # Last command status indicates the glyph color
  if [ $? == 0 ]; then
    bind "set vi-cmd-mode-string \1$LGREEN\2$CHAR_NORMAL_MODE\1$RESET\2"
    bind "set vi-ins-mode-string \1$LGREEN\2$CHAR_INSERT_MODE\1$RESET\2"
  else
    bind "set vi-cmd-mode-string \1$LRED\2$CHAR_NORMAL_MODE\1$RESET\2"
    bind "set vi-ins-mode-string \1$LRED\2$CHAR_INSERT_MODE\1$RESET\2"
  fi

  # Record each line as it gets issued
  history -a
}

prompt()
{
  if [ -f /run/.containerenv ]; then
    echo -n "\n$LCYAN⬢ \w"
  else
    echo -n "\n$LBLUE\w"
  fi
  if [ -f /etc/bash_completion.d/git-prompt.sh ]; then
    echo -n '$(__git_ps1 "$LWHITE on $LPURPLE$CHAR_GIT_BRANCH %s$RESET")'
  fi
  echo -n "\n "
}

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

PROMPT_COMMAND=prompt_command
PS1=`prompt`
