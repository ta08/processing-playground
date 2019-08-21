#!/bin/sh

for f_name in $(ls */*.gif); do
    gif_link='!'"[${f_name%/*}](${f_name})"
    if [ -z $(grep -F $gif_link README.md) ]; then
cat <<-EOH >>README.md
### ${f_name}

$gif_link

EOH
    fi
done
