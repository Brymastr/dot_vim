#!/bin/bash
if [ -n "$1" ]; then
  root="pack/default/start"
  for mod in "$@"
  do
    git submodule deinit $root/$mod
    git rm -r $root/$mod
    rm -r .git/modules/$root/$mod
  done
else
  echo "missing arguments: must specify modules to remove"
fi
