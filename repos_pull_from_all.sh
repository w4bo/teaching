#!/bin/bash
set -xo
for d in */ ; do
    [ -L "${d%/}" ] && continue
    echo "$d"
    cd $d
    git pull
    cd -
done
