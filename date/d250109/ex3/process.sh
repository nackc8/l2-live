#!/bin/bash

src=original
dst=modified

while true; do
    for src_img in "$src"/*; do
        sleep 3
        dst_img="$dst/$(basename "$src_img")"
        if [ ! -e "$dst_img" ]; then
            echo "Skapar $dst_img"
            touch "$dst_img"
        fi
    done
    sleep 10
done
