#!/usr/bin/env bash
sink=$(pacmd stat | awk -F ": " '/^Default sink name: /{print $2}')
pactl set-sink-volume $sink +5%
pkill -SIGRTMIN+10 i3blocks