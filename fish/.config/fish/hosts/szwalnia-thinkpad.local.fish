# Configuration specific to szwalnia-thinkpad.local hostname

# HDPI fixes
set -x QT_AUTO_SCREEN_SCALE_FACTOR 1
set -x GDK_SCALE 1.5

# Virtualfish support
eval (python3 -m virtualfish)

# Android and gradle in PATH
set -U fish_user_paths ~/opt/android_sdk/{platform-tools,tools}/ $fish_user_paths ~/opt/gradle/bin $fish_user_paths

set -x ANDROID_HOME ~/opt/android_sdk/
