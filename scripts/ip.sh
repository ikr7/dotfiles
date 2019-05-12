#!/usr/bin/env bash
addr=$(ip -4 addr show dev $INTERFACE | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "Ethernet: $addr"