#!/bin/bash

# define the directories
directories=("train_images" "images" "train2017" "VG_100K" "VG_100K_2")

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



