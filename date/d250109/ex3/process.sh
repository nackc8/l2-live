#!/bin/bash

src=original
dst=modified

while true; do
    for src_img in "$src"/*; do
        dst_img="$dst/$(basename "$src_img")"
        echo "$dst_img"
    done
    sleep 10
done
