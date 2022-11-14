#!/bin/bash
set -exo
git pull
git status
git add .
git commit -m "auto update"
git push