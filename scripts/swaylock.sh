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
  --key-hl-color 33364Af2 \
  --ring-color 33364Af2 \
  --text-color c3c1c5e6 \
  --inside-clear-color 100a19f2 \
  --ring-clear-color 33364Af2 \
  --text-clear-color c3c1c5e6 \
  --inside-ver-color 100a19f2 \
  --ring-ver-color 33364Af2 \
  --text-ver-color c3c1c5e6 \
  --bs-hl-color 16364Cff \
  --inside-wrong-color 244E64ff \
  --ring-wrong-color 244E64ff \
  --text-wrong-color c3c1c5ff
