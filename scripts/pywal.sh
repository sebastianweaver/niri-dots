#!/bin/sh

wp=$HOME/Pictures/Wallpapers/

niri msg action do-screen-transition &&
  wal -i "$wp" -o pywal-discord
$XDG_CONFIG_HOME/mako/update-theme.sh
$XDG_CONFIG_HOME/scripts/build-gradience.py
gradience-cli apply -n pywal
spicetify apply
cp "${HOME}/.cache/wal/niri-config.kdl" "${HOME}/.config/niri/config.kdl" &&
  . ~/.config/niri/scripts/niri-pywal-template.sh
systemctl --user reload waybar.service && niri msg action do-screen-transition -d 800 && sleep 1
