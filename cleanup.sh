#!/bin/bash

if [ -z "$1" ]; then
    echo "Using: $0 home/lka/test_sasha"
    exit 1
fi

find "$1" -type f -mtime +7 -exec rm -f {} \;

echo "Cleaning finished on directory: $1"
