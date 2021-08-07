# 1. Make screen turn off faster after locking in KDE Plasma

Windows has it, but in KDE the screen off timeout doesn't depend on whether screen is locked or not.

Solution: run script on screen lock. General screen off command is `xset dpms force off`.

Edit KDE Plasma 5 event: System Settings → Notifications → Application Settings → Screen Saver → Configure Events → Screen locked → Run command.

Command for screen off after 10 seconds from locking: `/usr/bin/bash -c "sleep 10; xset dpms force off"`
However, screen will be turned off even if you unlocked it before the timeout.

The issue is resolved in the script `lockscreen-off.sh` (edit the timeout in it) which checks if screen is still locked before turning it off.
