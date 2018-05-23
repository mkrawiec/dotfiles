# Enable colored output
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'

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
alias gcd='cd `git rev-parse --show-toplevel`'

# Docker
alias dockrm='docker rm -f `docker ps -qa`'
alias dockrmi='docker rmi `docker images -f "dangling=true" -q`'
alias dockip='docker inspect --format "{{ .NetworkSettings.IPAddress }}"'

# Npm
alias npmi='npm install --save'
alias npmii='npm install --save-dev'
npmv() { npm info $1 dist-tags; }

# Multimedia
alias songdownload='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
alias playstream='livestreamer -p mpv --player-continuous-http --hls-segment-threads 4'
splayhq() { splay $argv[1] best; }
splaylq() { splay $argv[1] worst; }

# Etc
alias myip='curl -s http://ip-api.com/json | python3 -m json.tool'
alias serve='python3 -m SimpleHTTPServer'

# Linux specific
if [ `uname -s` == 'Linux' ]; then
  alias xcopy='xclip'
  alias xpaste='xclip -o'
  alias sd='sudo systemctl'
  alias sdlog='sudo journalctl -n 20 -f -u'

  alias zup='sudo zypper dist-upgrade'
  alias zin='sudo zypper install'
  alias zinn='sudo zypper install --force'
  alias zrm='sudo zypper remove'
  alias zcl='sudo zypper clean --all'
  alias zi='zypper info'
  alias zse='zypper search'
  alias zsi='zypper search -i'
  alias zwp='zypper search --provides --match-exact'
  # macOS specific
elif [ `uname -s` == 'Darwin' ]; then
  alias vi='nvim'
  alias vim='nvim'

  alias zup='brew update && brew upgrade --cleanup && brew cask upgrade && softwareupdate -l'
  alias zin='brew install'
  alias zrm='brew remove'
  alias zcl='brew cleanup'
  alias zi='brew info'
  alias zse='brew search'
  alias zsi='brew search -S'
fi
