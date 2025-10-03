#!/bin/bash
# start-v4l2loopback.sh
# Loads v4l2loopback module at boot with logging

set -e

MODULE="v4l2loopback"
OPTIONS="devices=1 exclusive_caps=1 card_label=VirtualCam"

LOGFILE="/var/log/v4l2loopback.log"

# Delay to make sure system is ready
sleep 5

{
    echo "[$(date)] Starting v4l2loopback script..."

    if /sbin/lsmod | /bin/grep -q "$MODULE"; then
        echo "[$(date)] $MODULE already loaded"
        /usr/bin/logger "$MODULE already loaded"
    else
        echo "[$(date)] Loading $MODULE..."
        /sbin/modprobe $MODULE $OPTIONS
        echo "[$(date)] $MODULE loaded successfully"
        /usr/bin/logger "$MODULE loaded successfully"
    fi
} >> "$LOGFILE" 2>&1
