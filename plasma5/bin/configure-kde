#!/usr/bin/env bash

# Use sudo when asking for passwords
kwriteconfig5 --file kdesurc --group super-user-command --key super-user-command "sudo"

#
# Font settings
#

kwriteconfig5 --file kdeglobals --group General --key font "Open Sans,10,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key menuFont "Open Sans,10,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key smallestReadableFont "Open Sans,8,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key toolBarFont "Open Sans,9,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key fixed "Iosevka,12,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group WM --key activeFont "Open Sans,10,-1,5,75,0,0,0,0,0"

#
# KWin
#

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

#
# Keyboard shortcuts
#

# Show desktop
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Show Desktop" "Meta+A,none,none"

# Toggle konsole background mode
kwriteconfig5 --file kglobalshortcutsrc --group konsole --key "Konsole Background Mode" "Meta+E,none,none"

# Lock session
kwriteconfig5 --file kglobalshortcutsrc --group ksmserver --key "Lock Screen" "Meta+Esc\tScreensaver,none,none"

# Run krunner
kwriteconfig5 --file kglobalshortcutsrc --group krunner --key "run command" "Meta+D\tSearch,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group krunner --key "run command on clipboard" "Meta+Shift+D,none,none"

# Switch desktop
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Switch to Desktop 1" "Meta+1,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Switch to Desktop 2" "Meta+2none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Switch to Desktop 3" "Meta+3,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Switch to Desktop 4" "Meta+4,none,none"

# Move window to desktop
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 1" "Meta+!,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 2" "Meta+@,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 3" "Meta+#,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 4" "Meta+$,none,none"

# Window tiling
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window Quick Tile Left" "Meta+H,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window Quick Tile Bottom" "Meta+J,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window Quick Tile Top" "Meta+K,none,none"
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window Quick Tile Right" "Meta+L,none,none"

