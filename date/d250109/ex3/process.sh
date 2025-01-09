#!/bin/bash

src="$1"
dst="$2"

while true; do
    for src_img in "$src"/*; do
        dst_img="$dst/$(basename "$src_img")"
        if [ ! -e "$dst_img" ]; then
            echo "$(date) skapar $dst_img"
            convert "$src_img" -colorspace Gray "$dst_img"
        fi
    done
    sleep 5
done
