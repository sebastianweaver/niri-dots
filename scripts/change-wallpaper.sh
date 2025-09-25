#!/bin/bash
path="$HOME/.config/wal/colorschemes/dark/"
pic=$(ls $path | sed 's/\(.*\)\..*/\1/' | fuzzel -d)
if [ ! -z "$pic" ]; then
  niri msg action do-screen-transition &&
    wal --theme "$path$pic"
  systemctl --user reload waybar.service && niri msg action do-screen-transition -d 800 && sleep 1
fi
