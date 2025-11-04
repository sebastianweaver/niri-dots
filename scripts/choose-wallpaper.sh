#!/bin/bash
path="$HOME/Pictures/Wallpapers/"
pic=$(ls $path | sed 's/\(.*\)\..*/\1/' | fuzzel -d)
if [ ! -z "$pic" ]; then
  niri msg action do-screen-transition &&
    wal -i "$path$pic" -o pywal-discord
  spicetify apply
  cp "${HOME}/.cache/wal/niri-config.kdl" "${HOME}/.config/niri/config.kdl" &&
    . ~/.config/niri/scripts/niri-pywal-template.sh
  . "${HOME}/.cache/wal/colors-openrgb.sh"
  systemctl --user reload waybar.service && niri msg action do-screen-transition -d 800 && sleep 1

fi
