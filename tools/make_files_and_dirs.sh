#!/bin/sh
set -ev

mkdir "parent_dir"

for i in `seq 0 3`; do
    for j in `seq 0 3`; do
        num="$i$j"

        # file in root
        touch    "file_root_$num"

        # file in sub-dir
        touch    "parent_dir/file_deep_$num"

        # dir in root
        mkdir -p "dir_root_$num/child_dir"
        touch    "dir_root_$num/child_dir/file_leaf"

        # dir in sub-dir
        mkdir -p "parent_dir/dir_deep_$num/child_dir"
        touch    "parent_dir/dir_deep_$num/child_dir/file_leaf"

    done
done
