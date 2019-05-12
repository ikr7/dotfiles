#!/usr/bin/env bash
df=$(df / -h --output=avail -B G | grep -oP '\d+')
echo "/ : $df GiB available"