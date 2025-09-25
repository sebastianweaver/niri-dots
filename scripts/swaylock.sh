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
  --key-hl-color 26356Df2 \
  --ring-color 26356Df2 \
  --text-color c0c0c1e6 \
  --inside-clear-color 04040af2 \
  --ring-clear-color 26356Df2 \
  --text-clear-color c0c0c1e6 \
  --inside-ver-color 04040af2 \
  --ring-ver-color 26356Df2 \
  --text-ver-color c0c0c1e6 \
  --bs-hl-color 1B2763ff \
  --inside-wrong-color 2E417Cff \
  --ring-wrong-color 2E417Cff \
  --text-wrong-color c0c0c1ff
