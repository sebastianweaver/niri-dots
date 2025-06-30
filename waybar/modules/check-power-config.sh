#!/bin/bash
mode="$(cat $HOME/.local/state/power-profile)"
case $mode in
"default")
  printf '{"text": "", "alt": "balanced enabled", "tooltip": "balanced enabled"}'
  ;;
"performance")
  printf '{"text": "", "alt": "performance enabled", "tooltip": "performance enabled"}'
  ;;
"balanced")
  printf '{"text": "", "alt": "balanced enabled", "tooltip": "balanced enabled"}'
  ;;
"powersave")
  printf '{"text": "", "alt": "powersave enabled", "tooltip": "powersave enabled"}'
  ;;
*)
    printf '{"text": "err", "alt": "powermode not found", "tooltip": "powermode not found"}'
    ;;
esac
