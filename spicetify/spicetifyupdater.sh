#!/bin/bash

# https://github.com/prasanthrangan/hyprdots and it works so much better

if
  pgrep -x spotify >/dev/null
then
  pkill -x spicetify
  spicetify -q watch -s &
fi
