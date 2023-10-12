#!/bin/bash

# define the directories
directories=("coco" "gqa" "ocr_vqa" "textvqa" "vg")

# iterate over directories
for dir in "${directories[@]}"; do
    # check if the subdirectory exists
    if [ -d "$dir/$dir" ]; then
        echo "Moving files from $dir/$dir to $dir"
        mv "$dir/$dir"/* "$dir/"
        echo "Removing directory $dir/$dir"
        rmdir "$dir/$dir"
    fi
done
