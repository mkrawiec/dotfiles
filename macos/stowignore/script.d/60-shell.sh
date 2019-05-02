# Use dark theme with white windows
defaults write ~/Library/Preferences/.GlobalPreferences.plist AppleInterfaceTheme -string "Dark"
defaults write ~/Library/Preferences/.GlobalPreferences.plist AppleInterfaceStyle -string "Dark"
defaults write -g NSRequiresAquaSystemAppearance -bool Yes
defaults write com.apple.Spotlight NSRequiresAquaSystemAppearance -bool No
defaults write com.apple.notificationcenterui NSRequiresAquaSystemAppearance -bool No

# Speed up Mission Control animations
defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES
defaults write com.apple.dock expose-animation-duration -int 0
defaults delete com.apple.dock expose-animation-duration

# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Reset Launchpad, but keep the desktop wallpaper intact
find "${HOME}/Library/Application Support/Dock" -maxdepth 1 -name "*-*.db" -delete

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable hot corners
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
