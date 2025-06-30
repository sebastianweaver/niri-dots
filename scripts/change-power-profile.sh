#!/bin/bash
options="powersave\nbalanced\nperformance"
choice=$(echo -e "$options" | fuzzel --dmenu --lines 3 -w 20 --config $HOME/.config/fuzzel/power-profile.ini)
if [ ! -z "$choice" ]; then
  sudo pkill tuned
  echo $choice >$HOME/.local/state/power-profile
  sudo tuned --profile $choice &
  disown
fi
