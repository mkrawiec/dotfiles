# Remove greeting text
set --erase fish_greeting

# DIRCOLORS for ls
eval (dircolors -c $HOME/.dircolors)

# Load system defaults for bash
bash /etc/profile

# FZF config
set -U fish_user_paths ~/bin/ ~/.fzf/bin/
set -gx FZF_DEFAULT_COMMAND 'ag -g ""'

# Use vi style editing
set -U fish_key_bindings fish_vi_key_bindings

###########
# ALIASES #
###########

# General aliases
alias g 'git'
alias cl 'clear'
function fif; grep -rinw $argv[1] -e $argv[2]; end
alias fifh 'fif .'
alias nident 'curl -s http://ip-api.com/json | python3 -m json.tool'

# Zypper
alias zup 'sudo zypper dist-upgrade'
alias zin 'sudo zypper install'
alias zrm 'sudo zypper remove'
alias zinf 'zypper info'
alias zse 'zypper search'
alias zsi 'zypper search -i'
alias zwp 'zypper search --provides --match-exact'

# Docker
alias dockrm 'docker rm -f (docker ps -qa)'
alias dockrmi 'docker rmi (docker images -f "dangling=true" -q)'
alias dockip 'docker inspect --format "{{ .NetworkSettings.IPAddress }}"'

# Shortcuts for copy/paste
alias xcopy 'xclip'
alias xpaste 'xclip -o'

# Stream laggy Twitch stream flawlessly ;)
alias splay 'livestreamer -p mpv --player-continuous-http --hls-segment-threads 4'
function splayhq; splay $argv[1] best; end
function splaylq; splay $argv[1] worst; end

# Download YouTube mp3
alias ytmp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'

# Import host-specific settings
set host_config ~/.config/fish/hosts/(hostname).fish
test -f $host_config; and source $host_config
