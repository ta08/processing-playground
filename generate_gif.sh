#!/bin/sh

target_dir=$(basename $1)
target_frames="$target_dir/frames"

if [[ ! -e $target_frames ]]; then
  echo 'no frames directory'
  exit 1
else
  convert -delay 5 -loop 0 $target_frames/*.png $target_dir/movie.gif
fi
