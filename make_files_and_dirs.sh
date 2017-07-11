#!/bin/sh
set -ev

mkdir "some_dir"

for x in `seq 1 5`; do

    # file in root
    touch    "file1$x"

    # file in sub-dir
    touch    "some_dir/file2$x"

    # dir in root
    mkdir -p "dir1$x/some_dir"
    touch    "dir1$x/some_dir/file"

    # dir in sub-dir
    mkdir -p "some_dir/dir2$x/some_dir"
    touch    "some_dir/dir2$x/some_dir/file"

done
