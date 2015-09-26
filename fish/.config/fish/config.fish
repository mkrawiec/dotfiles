# Remove greeting text
set --erase fish_greeting

# Add sbins to PATH
set --universal fish_user_paths /sbin /usr/sbin

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

# Zypper
alias zup 'sudo zypper dup'
alias zin 'sudo zypper in'
alias zrm 'sudo zypper rm'
alias zse 'zypper se'
alias zsi 'zypper se -i'
function zwp
    set -lx cmd_path (command -v $argv[1])
    if [ $cmd_path ]
        zypper se -i --provides --match-exact $cmd_path
    else
        zypper se -u --provides $argv[1]
    end
end

# Creating nspawn containers
function susestrap
    sudo zypper --root $argv[1] -D /etc/zypp/repos.d in aaa_base zypper systemd
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


function postactivate --on-event virtualenv_will_activate
    if test -f $VIRTUAL_ENV/postactivate.fish
        source $VIRTUAL_ENV/postactivate.fish
    end
end
