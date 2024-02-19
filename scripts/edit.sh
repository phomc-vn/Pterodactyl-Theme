#!/usr/bin/env bash

pushd panel-fork
git rebase --interactive upstream/upstream
popd
