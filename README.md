# 1. Make screen turn off faster after locking in KDE Plasma

Windows has it, but in KDE the screen off timeout doesn't depend on whether screen is locked or not.

Solution: run script on screen lock.

Edit KDE Plasma 5 event: System Settings → Notifications → Application Settings → Screen Saver → Configure Events → Screen locked → Run command = "/path/to/lockscreen-off.sh".

`lockscreen-off.sh` waits specified time (edit the timeout in it), checks if screen is still locked, and turns it off.
