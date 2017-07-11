#!/bin/sh
set -ev

find . -type f -name 'file*' -delete
find . -type d -name '*child_dir' -delete
find . -type d -name 'dir*' -delete
