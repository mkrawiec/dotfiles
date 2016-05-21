# Configuration specific to szwalnia-thinkpad.local hostname

# Virtualfish support
eval (python3 -m virtualfish)

# Android and gradle in PATH
set -U fish_user_paths ~/opt/android_sdk/{platform-tools,tools}/ $fish_user_paths ~/opt/gradle/bin $fish_user_paths
