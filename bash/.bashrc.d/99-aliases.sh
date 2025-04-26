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
if [ -f /usr/share/bash-completion/completions/git ]; then
    source /usr/share/bash-completion/completions/git
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
alias activate='source .venv/bin/activate'

# Multimedia
alias songdownload='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
playstream() { streamlink --player-continuous-http --hls-segment-threads 4 $1 best; }

# Etc
alias myip='curl -s http://ip-api.com/json | python3 -m json.tool'
alias serve='python3 -m http.server 3000'

if [ `uname -s` == 'Linux' ]; then
  # XDG
  alias open='xdg-open'
  alias xcopy='wl-copy'
  alias xpaste='wl-paste'
  # Systemd
  alias sd='sudo systemctl'
  alias sdlog='sudo journalctl -n 20 -f -u'
  # Distrobox
  alias box='distrobox enter distrobox-sid'
  alias boxup='distrobox upgrade distrobox-sid'
  # Apt
  alias ain='sudo apt install --no-install-recommends'
  alias aup='sudo apt update && sudo apt dist-upgrade'
  alias alu='apt list --upgradable'
  alias ali='apt list --installed | grep'
  alias ase='apt search'
fi
