#!/bin/bash
# git fsck && git gc --prune=now
git pull
for d in */ ; do
    [ -L "${d%/}" ] && continue
    echo "$d"
    cd $d
    # git fsck && git gc --prune=now
    default_branch=$(git remote show origin | grep 'HEAD branch' | awk '{print $NF}')
    if [ -z "$default_branch" ]; then
        echo "Could not detect the default branch. Ensure the repository is properly configured."
        exit 1
    fi
    echo "Checking out to the default branch: $default_branch"
    git checkout "$default_branch"
    git pull
    cd -
done
