#!/bin/bash

src=original
dst=modified

while true; do
    for src_img in "$src"/*; do
        dst_img="$(basename "$src_img")"
        echo "$dst_img"
    done
    sleep 10
done
