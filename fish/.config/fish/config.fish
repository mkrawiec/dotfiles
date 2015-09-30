# Remove greeting text
set --erase fish_greeting

# DIRCOLORS for ls
eval (dircolors -c $HOME/.dircolors)

# Init Virtualfish
eval (python3 -m virtualfish)

# Load system defaults for bash
bash /etc/profile

###########
# ALIASES #
###########

# General aliases
alias cl 'clear'
function fif; grep -rinw $argv[1] -e $argv[2]; end
alias fifh 'fif .'

# DNF
alias dup 'sudo dnf --refresh distro-sync'
alias din 'sudo dnf install'
alias drm 'sudo dnf -C erase'
alias dse 'dnf -C search'
alias dsi 'dnf -C list installed | grep -i'
alias dwp 'dnf -C provides'

# Creating nspawn containers
function dnfstrap
    sudo dnf --releasever=(rpm -E %fedora) --nogpg --installroot=$argv[1] --disablerepo='*' --enablerepo=fedora install systemd passwd dnf fedora-release vim-minimal
end

# Shortcuts for copy/paste
alias xcopy 'xsel --clipboard --input'
alias xpaste 'xsel --clipboard --output'

# Stream laggy Twitch stream flawlessly ;)
alias splay 'livestreamer -p bomi --player-continuous-http --hls-segment-threads 4'
function splayhq; splay $argv[1] best; end
function splaylq; splay $argv[1] worst; end

# Download YouTube mp3
alias ytmp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'

