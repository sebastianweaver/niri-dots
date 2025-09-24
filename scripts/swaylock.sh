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
  --key-hl-color 5A655Bf2 \
  --ring-color 5A655Bf2 \
  --text-color c1c2c5e6 \
  --inside-clear-color 0a0e17f2 \
  --ring-clear-color 5A655Bf2 \
  --text-clear-color c1c2c5e6 \
  --inside-ver-color 0a0e17f2 \
  --ring-ver-color 5A655Bf2 \
  --text-ver-color c1c2c5e6 \
  --bs-hl-color 49534Cff \
  --inside-wrong-color 5F6860ff \
  --ring-wrong-color 5F6860ff \
  --text-wrong-color c1c2c5ff
