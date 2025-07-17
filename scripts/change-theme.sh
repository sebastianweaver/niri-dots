#!/bin/bash
modes="Default\nDabi 1\nDabi 1\nDabi 2\nPink\nGodzilla\nKusuriuri\nWhite\nRandom"
choice=$(echo -e "$modes" | fuzzel --dmenu --lines 5 -w 20 --config $HOME/.config/fuzzel/change-theme.ini)
if [ -n -z "$choice" ]; then
  echo $choice >$HOME/.local/state/change-theme
  bash pywal ~/Pictures/Wallpapers/[...] &
  disown
fi
