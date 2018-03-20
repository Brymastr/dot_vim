#!/bin/bash
if [ -n "$1" ]; then
  # update specified submodules
  wd=$PWD
  for param in "$@"
  do
    SUBMOD="$wd/pack/default/start/$param"
    cd $SUBMOD
    git pull origin master
  done
else
  # update all submodules
  git submodule foreach git pull origin master
fi
