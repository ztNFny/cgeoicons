#!/bin/bash
for fullfile in ~/gitwork/cgeoicons/svgs/*.svg; do
    filename=$(basename -- "$fullfile")
    extension="${filename##*.}"
    filename="${filename%.*}"
    find ~/gitwork/cgeo/main/res/ -name $filename.png -delete
done