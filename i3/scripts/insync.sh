#!/usr/bin/env bash

stat=$(insync-headless get_status)

if [ "$stat" = "SHARE" ]; then
    echo "Google Drive: OK"
    echo "GDrive: OK"
    echo "#00FF00"
elif [ "$stat" = "SYNCING" ]; then
    echo "Google Drive: $(insync-headless get_sync_progress | tail -n 1)"
    echo "GDrive: Syncing"
    echo "#FFFF00"
else
    echo "Google Drive: $stat"
    echo "GDrive: ERR"
    echo "#FFFFFF"
    echo "#FF0000"
fi
