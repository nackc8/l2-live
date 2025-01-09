#!/bin/bash

docker run \
    -v ./original:/grey/original \
    -v ./modified:/grey/modified \
    -d \
    --rm \
    --name greyiocontainer \
    --network none \
    grey_io
