#!/bin/bash
git pull
for d in */ ; do
    [ -L "${d%/}" ] && continue
    echo "$d"
    cd $d
    git pull
    cd -
done
