#!/bin/bash

wp=$HOME/Pictures/Wallpapers/

wal -i "$wp" -o pywal-discord ;
$XDG_CONFIG_HOME/mako/update-theme.sh ;
$XDG_CONFIG_HOME/scripts/build-gradience.py && gradience-cli apply -n pywal ;
cp "${HOME}/.cache/wal/niri-config.kdl" "${HOME}/.config/niri/config.kdl" ;
. ~/.config/niri/scripts/niri-pywal-template.sh ;
niri msg action do-screen-transition -d 500
echo "[NIRI] Niri config applied" ;
systemctl --user reload waybar.service ;
echo "[WAYBAR] Waybar Reloaded" ;
