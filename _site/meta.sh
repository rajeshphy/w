#!/bin/bash

# This script assumes you're in the root of your Jekyll project
# and that your images are inside the assets/ subfolders.

echo "const allFiles = ["

find assets/ -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) | while read -r file; do
    filename=$(basename "$file")
    echo "  { path: \"/$file\", name: \"$filename\" },"
done

echo "];"
