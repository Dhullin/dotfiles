#!/bin/sh

# Listen for 'workspace' events on the Hyprland socket
socat -u "UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" STDOUT | while read -r line; do
    if echo "$line" | grep -q "^workspace>>"; then
        # Send toggle signal to waybar
        killall -SIGUSR1 waybar
    fi
done
