#!/usr/bin/env bash

# Use sudo when asking for passwords
kwriteconfig5 --file kdesurc --group super-user-command --key super-user-command "sudo"

# Font settings
kwriteconfig5 --file kdeglobals --group General --key font "Open Sans,10,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key menuFont "Open Sans,10,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key smallestReadableFont "Open Sans,8,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key toolBarFont "Open Sans,9,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key fixed "Iosevka,12,-1,5,50,0,0,0,0,0"

# KWin
kwriteconfig5 --file kwinrc --group Compositing --key AnimationSpeed 1
kwriteconfig5 --file kwinrc --group Compositing --key UnredirectFullscreen true

# Disable unneeded desktop effects
kwriteconfig5 --file kwinrc --group Plugins cubeslideEnabled false
kwriteconfig5 --file kwinrc --group Plugins desktopchangeosdEnabled false
kwriteconfig5 --file kwinrc --group Plugins kwin4_effect_eyeonscreenEnabled true
kwriteconfig5 --file kwinrc --group Plugins kwin4_effect_fadedesktopEnabled false
kwriteconfig5 --file kwinrc --group Plugins kwin4_effect_maximizeEnabled false
kwriteconfig5 --file kwinrc --group Plugins kwin4_effect_translucencyEnabled false
kwriteconfig5 --file kwinrc --group Plugins slideEnabled false

