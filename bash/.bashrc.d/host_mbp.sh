if [ `hostname` == 'mkrawiec-mbp' ]; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

  [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
fi
