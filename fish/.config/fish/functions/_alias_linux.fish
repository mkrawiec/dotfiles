function _alias_linux
    alias xcopy 'xclip'
    alias xpaste 'xclip -o'
    alias sd 'sudo systemctl'
    alias sdlog 'sudo journalctl -n 20 -f -u'

    # Zypper
    alias zup 'sudo zypper dist-upgrade'
    alias zin 'sudo zypper install'
    alias zinn 'sudo zypper install --force'
    alias zrm 'sudo zypper remove'
    alias zcl 'sudo zypper clean --all'
    alias zi 'zypper info'
    alias zse 'zypper search'
    alias zsi 'zypper search -i'
    alias zwp 'zypper search --provides --match-exact'
end
