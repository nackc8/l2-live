#!/bin/bash

src=original
dst=modified

while true; do
    for src_img in "$src"/*; do
        basename "$src_img"
    done
    sleep 10
done
