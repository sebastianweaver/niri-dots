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
  --key-hl-color 70A49Bf2 \
  --ring-color 70A49Bf2 \
  --text-color cdc3c3e6 \
  --inside-clear-color 3a1212f2 \
  --ring-clear-color 70A49Bf2 \
  --text-clear-color cdc3c3e6 \
  --inside-ver-color 3a1212f2 \
  --ring-ver-color 70A49Bf2 \
  --text-ver-color cdc3c3e6 \
  --bs-hl-color C46996ff \
  --inside-wrong-color CF9BA6ff \
  --ring-wrong-color CF9BA6ff \
  --text-wrong-color cdc3c3ff
