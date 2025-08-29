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
  --key-hl-color 6D685Bf2 \
  --ring-color 6D685Bf2 \
  --text-color c3c3c3e6 \
  --inside-clear-color 111111f2 \
  --ring-clear-color 6D685Bf2 \
  --text-clear-color c3c3c3e6 \
  --inside-ver-color 111111f2 \
  --ring-ver-color 6D685Bf2 \
  --text-ver-color c3c3c3e6 \
  --bs-hl-color 505049ff \
  --inside-wrong-color 7F816Fff \
  --ring-wrong-color 7F816Fff \
  --text-wrong-color c3c3c3ff
