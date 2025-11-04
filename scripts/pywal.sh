#!/bin/sh

wp=$HOME/Pictures/Wallpapers/

niri msg action do-screen-transition &&
  wal -i "$wp" -o pywal-discord
# $XDG_CONFIG_HOME/mako/update-theme.sh
#/home/cbash/.config/scripts/build-gradience.py &&
#  gradience-cli apply -n pywal
spicetify apply
cp "${HOME}/.cache/wal/niri-config.kdl" "${HOME}/.config/niri/config.kdl" &&
  . ~/.config/niri/scripts/niri-pywal-template.sh
. "${HOME}/.cache/wal/colors-openrgb.sh"
systemctl --user reload waybar.service && niri msg action do-screen-transition -d 800 && sleep 1
