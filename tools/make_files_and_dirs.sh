#!/bin/sh
set -ev

mkdir "file_parent_dir"
mkdir "dir_parent_dir"

for x in `seq 1 5`; do

    # file in root
    touch    "file_root_$x"

    # file in sub-dir
    touch    "file_parent_dir/file_deep_$x"

    # dir in root
    mkdir -p "dir_root_$x/child_dir"
    touch    "dir_root_$x/child_dir/file_leaf"

    # dir in sub-dir
    mkdir -p "dir_parent_dir/dir_deep_$x/child_dir"
    touch    "dir_parent_dir/dir_deep_$x/child_dir/file_leaf"

done
