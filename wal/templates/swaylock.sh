#!/bin/bash
niri msg action do-screen-transition --delay-ms 300
swaylock \
  --clock \
  --screenshots \
  --daemonize \
  --ignore-empty-password \
  --indicator \
  --indicator-radius 150 \
  --effect-scale 0.4 \
  --effect-vignette 0.2:0.5 \
  --effect-blur 4x2 \
  --datestr "%A, %b %d" \
  --timestr "%k:%M" \
  --key-hl-color {color2.strip}f2 \
  --ring-color {color2.strip}f2 \
  --text-color {cursor.strip}e6 \
  --inside-clear-color {background.strip}f2 \
  --ring-clear-color {color2.strip}f2 \
  --text-clear-color {cursor.strip}e6 \
  --inside-ver-color {background.strip}f2 \
  --ring-ver-color {color2.strip}f2 \
  --text-ver-color {cursor.strip}e6 \
  --bs-hl-color {color1.strip}ff \
  --inside-wrong-color {color4.strip}ff \
  --ring-wrong-color {color4.strip}ff \
  --text-wrong-color {cursor.strip}ff
