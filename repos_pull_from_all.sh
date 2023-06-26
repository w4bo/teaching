#!/bin/bash
set -xo
for d in */ ; do
    [ -L "${d%/}" ] && continue
    echo "$d"
    cd $d
    git pull origin master
    git pull origin main
    cd -
done
