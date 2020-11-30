#!/bin/bash
# 処理対象のディレクトリ実行してください。
# フォルダの中まで再帰的に処理されます

OLDIFS=$IFS
IFS="
"
files=`find . -name "*.m4a"`
for f in $files; do
    ffmpeg -i "$f" "${f/.m4a/.mp3}"
    rm -f "$f"
done
IFS=$OLDIFS
