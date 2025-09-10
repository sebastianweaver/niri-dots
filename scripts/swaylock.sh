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
  --key-hl-color 4C4F4Ff2 \
  --ring-color 4C4F4Ff2 \
  --text-color c3c5c6e6 \
  --inside-clear-color 121a1bf2 \
  --ring-clear-color 4C4F4Ff2 \
  --text-clear-color c3c5c6e6 \
  --inside-ver-color 121a1bf2 \
  --ring-ver-color 4C4F4Ff2 \
  --text-ver-color c3c5c6e6 \
  --bs-hl-color 3D6446ff \
  --inside-wrong-color 8C6D66ff \
  --ring-wrong-color 8C6D66ff \
  --text-wrong-color c3c5c6ff
