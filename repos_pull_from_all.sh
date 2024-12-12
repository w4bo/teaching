#!/bin/bash
git pull
for d in */ ; do
    [ -L "${d%/}" ] && continue
    echo "$d"
    cd $d
    git fsck && git gc --prune=now
    git pull
    cd -
done
