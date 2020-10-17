#!/bin/bash


OLDIFS=$IFS
IFS="
"
files=`find . -name "*.m4a"`
for f in $files; do
    ffmpeg -i "$f" "${f/.m4a/.mp3}"
    rm -f "$f"
done
IFS=$OLDIFS
