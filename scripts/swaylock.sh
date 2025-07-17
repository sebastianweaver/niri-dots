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
  --key-hl-color 546A6Ff2 \
  --ring-color 546A6Ff2 \
  --text-color c5c7c7e6 \
  --inside-clear-color 1a2122f2 \
  --ring-clear-color 546A6Ff2 \
  --text-clear-color c5c7c7e6 \
  --inside-ver-color 1a2122f2 \
  --ring-ver-color 546A6Ff2 \
  --text-ver-color c5c7c7e6 \
  --bs-hl-color 5B5E57ff \
  --inside-wrong-color 927361ff \
  --ring-wrong-color 927361ff \
  --text-wrong-color c5c7c7ff
