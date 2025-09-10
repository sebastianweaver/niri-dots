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
  --key-hl-color F09104f2 \
  --ring-color F09104f2 \
  --text-color c1c0c0e6 \
  --inside-clear-color 090404f2 \
  --ring-clear-color F09104f2 \
  --text-clear-color c1c0c0e6 \
  --inside-ver-color 090404f2 \
  --ring-ver-color F09104f2 \
  --text-ver-color c1c0c0e6 \
  --bs-hl-color B6851Eff \
  --inside-wrong-color FAAC32ff \
  --ring-wrong-color FAAC32ff \
  --text-wrong-color c1c0c0ff
