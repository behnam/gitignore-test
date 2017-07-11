#!/bin/sh
set -ev

find . -type f -name 'file*' -delete
find . -type d -name 'some_dir' -delete
find . -type d -name 'dir*' -delete
find . -type d -name 'some_dir' -delete
