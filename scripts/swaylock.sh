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
  --key-hl-color 8E6E54f2 \
  --ring-color 8E6E54f2 \
  --text-color c4c1c1e6 \
  --inside-clear-color 150909f2 \
  --ring-clear-color 8E6E54f2 \
  --text-clear-color c4c1c1e6 \
  --inside-ver-color 150909f2 \
  --ring-ver-color 8E6E54f2 \
  --text-ver-color c4c1c1e6 \
  --bs-hl-color 885132ff \
  --inside-wrong-color A28771ff \
  --ring-wrong-color A28771ff \
  --text-wrong-color c4c1c1ff
