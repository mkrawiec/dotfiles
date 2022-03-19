# Enable colored output
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

# Basic aliases
alias ll='ls -alF'
alias cl='clear'
alias reconf='source ~/.bashrc && bind -f ~/.inputrc'
mkcd() { mkdir -p "$@" && cd "$1"; }

# Search file content
fif() { grep -rinw $1 -e $2; }
alias fifh='fif .'

# Git
alias g='git'
if [ -f /etc/bash_completion.d/git.sh ]; then
    __git_complete g __git_main
fi
alias gcd='cd `git rev-parse --show-toplevel`'

# Docker
alias dockrm='podman container prune'
alias dockrmi='podman image prune'
alias dockip='podman inspect --format "{{ .NetworkSettings.IPAddress }}"'

# Node
alias npmi='npm install --save'
alias npmii='npm install --save-dev'
npmv() { npm info $1 dist-tags; }

# Python
pyclean() { find . -regex '^.*\(__pycache__\|\.py[co]\)$' -delete ; }
pyenv_on() { eval "$(pyenv init -)"; }

# Multimedia
alias songdownload='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
playstream() { streamlink --player-continuous-http --hls-segment-threads 4 $1 best; }

# Etc
alias myip='curl -s http://ip-api.com/json | python3 -m json.tool'
alias serve='python3 -m http.server 3000'

if [ `uname -s` == 'Linux' ]; then
  # Linux specific
  alias open='xdg-open'
  alias xcopy='xclip'
  alias xpaste='xclip -o'
  alias sd='sudo systemctl'
  alias sdlog='sudo journalctl -n 20 -f -u'
  alias box='toolbox -nu'

  alias zin='sudo zypper install'
  alias zrm='sudo zypper remove'
  alias zse='zypper search'
  alias zsi='zypper search -i'
  alias zwp='zypper search --provides --match-exact'
  zlog() { rpm -q --changelog $1 | less; }
elif [ `uname -s` == 'Darwin' ]; then
  # macOS specific
  alias vi='nvim'
  alias vim='nvim'

  alias zup='brew update && brew upgrade && brew cask upgrade && softwareupdate -l'
  alias zin='brew install'
  alias zrm='brew remove'
  alias zcl='brew cleanup'
  alias zi='brew info'
  alias zse='brew search'
  alias zsi='brew search -S'
fi
