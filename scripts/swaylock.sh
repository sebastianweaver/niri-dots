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
  --key-hl-color 6C6A5Ff2 \
  --ring-color 6C6A5Ff2 \
  --text-color c3c5c8e6 \
  --inside-clear-color 101725f2 \
  --ring-clear-color 6C6A5Ff2 \
  --text-clear-color c3c5c8e6 \
  --inside-ver-color 101725f2 \
  --ring-ver-color 6C6A5Ff2 \
  --text-ver-color c3c5c8e6 \
  --bs-hl-color 4C4D4Fff \
  --inside-wrong-color 6F8F70ff \
  --ring-wrong-color 6F8F70ff \
  --text-wrong-color c3c5c8ff
