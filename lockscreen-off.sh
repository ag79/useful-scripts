#!/bin/bash
# Turn off screen shortly after it is locked in KDE Plasma
# Check if screen is still locked before turning it off

# Edit KDE Plasma 5 event: System Settings → Notifications → Application Settings → Screen Saver → Configure Events → Screen locked → Run command = "path-to-this-script.sh"

# Screen off delay (seconds)
sleep 20

ps -e | grep -q "[k]screenlocker_"

# To debug in terminal
# ps -e | grep -q "[k]onsole"

if [ $? -eq 0 ]
then
    xset dpms force off
# else
#    echo "screen locker is not running, doing nothing"
fi
