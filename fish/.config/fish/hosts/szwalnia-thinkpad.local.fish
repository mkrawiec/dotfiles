# Configuration specific to szwalnia-thinkpad.local hostname

# Enable auto HDPI support in Qt
set -x QT_AUTO_SCREEN_SCALE_FACTOR 1

# Virtualfish support
eval (python3 -m virtualfish)

# Android and gradle in PATH
set -U fish_user_paths ~/opt/android_sdk/{platform-tools,tools}/ $fish_user_paths ~/opt/gradle/bin $fish_user_paths
