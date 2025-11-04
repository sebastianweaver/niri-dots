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
  --key-hl-color 3C3F40f2 \
  --ring-color 3C3F40f2 \
  --text-color c7c7c2e6 \
  --inside-clear-color 1f1c1af2 \
  --ring-clear-color 3C3F40f2 \
  --text-clear-color c7c7c2e6 \
  --inside-ver-color 1f1c1af2 \
  --ring-ver-color 3C3F40f2 \
  --text-ver-color c7c7c2e6 \
  --bs-hl-color 694A39ff \
  --inside-wrong-color 4D4C4Aff \
  --ring-wrong-color 4D4C4Aff \
  --text-wrong-color c7c7c2ff
