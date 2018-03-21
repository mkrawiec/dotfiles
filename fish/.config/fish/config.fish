###########
# GENERAL #
###########
# Remove greeting text
set fish_greeting ""

# DIRCOLORS for ls
eval (dircolors -c $HOME/.dircolors)

# Load system defaults for bash
bash /etc/profile

# FZF config
set -U fish_user_paths ~/bin/ ~/.fzf/bin/
set -gx FZF_DEFAULT_COMMAND 'ag -g ""'

# Use vi style editing
set -U fish_key_bindings fish_vi_key_bindings

#################
# HOST-SETTINGS #
#################
set host_config ~/.config/fish/hosts/(hostname).fish
test -f $host_config; and source $host_config

###########
# ALIASES #
###########

# General aliases
alias bash 'bash --norc'
alias cl 'clear'
alias myip 'curl -s http://ip-api.com/json | python3 -m json.tool'

# Searching
function fif; grep -rinw $argv[1] -e $argv[2]; end
alias fifh 'fif .'

# Git
alias g 'git'
alias gcd 'cd (git rev-parse --show-toplevel)'

# Docker
alias dockrm 'docker rm -f (docker ps -qa)'
alias dockrmi 'docker rmi (docker images -f "dangling=true" -q)'
alias dockip 'docker inspect --format "{{ .NetworkSettings.IPAddress }}"'

# npm
alias npmi 'npm install --save'
alias npmii 'npm install --save-dev'
function npmv; npm info $argv[1] dist-tags; end

# Play laggy Twitch streams flawlessly
alias splay 'livestreamer -p mpv --player-continuous-http --hls-segment-threads 4'
function splayhq; splay $argv[1] best; end
function splaylq; splay $argv[1] worst; end

# Download YouTube mp3
alias ytmp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'

# Platform specific
switch (uname -s)
    case 'Linux'
        _alias_linux
    case 'Darwin'
        _alias_macos
end
