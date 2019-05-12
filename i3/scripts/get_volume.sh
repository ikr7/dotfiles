#!/usr/bin/env bash
sink=$(pacmd stat | awk -F ": " '/^Default sink name: /{print $2}')
volume=$(pacmd list-sinks | awk -W posix '/^[ \t]+name: /{insink = $2 == "<'$sink'>"} /^[ \t]+volume: / && insink {gsub("%", ""); print $5; exit}')
echo "♪: $volume%"
