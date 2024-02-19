#!/usr/bin/env bash

git submodule update --init && ./scripts/applyPatches.sh || exit 1

if [ "$1" == "--jar" ]; then
    # Check if builds folder exists, if not, create it
    if [ ! -d "builds" ]; then
        mkdir builds
    fi
    
    # Zip contents of panel-fork folder and move to builds folder
    cd panel-fork || exit 1
    tar czf ../builds/panel-fork-$(date +"%Y%m%d%H%M%S").tar.gz *
    cd ..
fi
