#!/bin/bash

# kill and restart waybar whenever its config changes
CONFIG_FILE="$HOME/.config/waybar/config.jsonc"

cleanup() {
	pkill waybar
	}

trap cleanup EXIT

while true; do
	inotifywait -e modify $CONFIG_FILE
	pkill waybar
	waybar 
done
