#!/usr/bin/env bash
set -exo

# List of local repository directories
repos=(
    "AA2425-unibo-mldm"
    "AA2526-unibo-mldm"
    "AA2425-unibo-bigdataandcloudplatforms"
    "AA2526-unibo-bigdataandcloudplatforms"
    "AA2526-unibo-phddataplat"
    "2025-webinar-smartirrigation"
    "2024-bf-wateringsummerschool"
    "slides-md"
)

for repo in "${repos[@]}"; do
    echo "Processing: $repo"
    cd "$repo" || continue
    # git pull
    git submodule update --init --recursive
    cd slides
    rm slides.scss || true
    python3 utils/clean_imgs.py
    cd ../..
    echo
done