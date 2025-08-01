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
  --key-hl-color 838379f2 \
  --ring-color 838379f2 \
  --text-color c6c2c2e6 \
  --inside-clear-color 1b0c0cf2 \
  --ring-clear-color 838379f2 \
  --text-clear-color c6c2c2e6 \
  --inside-ver-color 1b0c0cf2 \
  --ring-ver-color 838379f2 \
  --text-ver-color c6c2c2e6 \
  --bs-hl-color 687272ff \
  --inside-wrong-color 5F8788ff \
  --ring-wrong-color 5F8788ff \
  --text-wrong-color c6c2c2ff
