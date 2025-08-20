#!/bin/bash
options="power-saver\nbalanced\nperformance"
choice=$(echo -e "$options" | fuzzel --dmenu --lines 3 -w 20 --config $HOME/.config/fuzzel/power-profile.ini)
if [ ! -z "$choice" ]; then
  sudo pkill powerprofilesctl
  echo $choice >$HOME/.local/state/power-profile
  sudo powerprofilesctl set $choice &
  disown
fi
