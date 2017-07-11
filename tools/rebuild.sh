#!/bin/sh
set -ev

_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


$_DIR/delete_files_and_dirs.sh

git add --all

$_DIR/make_files_and_dirs.sh

git add --all
