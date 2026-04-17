#!/bin/bash
# Usage: ./batch_rename.sh <directory> <extension> <prefix>

DIR=$1
EXT=$2
PREFIX=$3

if [ -z "$DIR" ] || [ -z "$EXT" ]; then
    echo "Usage: ./batch_rename.sh [dir] [extension] [prefix]"
    exit 1
fi

count=1
for file in "$DIR"/*."$EXT"; do
    mv "$file" "$DIR/${PREFIX}_Sample_$(printf "%03d" $count).$EXT"
    ((count++))
done

echo "Renaming complete. Files are now prefixed with $PREFIX."
