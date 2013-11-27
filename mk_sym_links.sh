#!/bin/sh

dirname=$(dirname "$0")
fname=$(basename "$0")
for i in `ls "$dirname"/* | grep -v "$fname" | grep -v README`; do
    ln -s "$i" .$(basename "$i")
done
