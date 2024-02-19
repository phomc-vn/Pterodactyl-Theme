#!/usr/bin/env bash

git submodule update --init && ./scripts/applyPatches.sh || exit 1

if [ "$1" == "--jar" ]; then
    cd panel-fork || exit 1
    zip -r ../builds/panel-fork-$(date +"%Y%m%d%H%M%S").zip *
    cd ..
fi
