#!/bin/sh

if [[ ! -e "frames" ]]; then
  echo 'no frames directory'
  exit 1
else
  convert -delay 5 -loop 0 frames/*.png movie.gif
fi
