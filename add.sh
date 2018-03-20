if [ -n "$1" ]; then
  wd=$PWD
  basePath="$wd/pack/default/start"
  for mod in $@
  do
    repo="git@github.com:$mod.git"
    sub="$(echo $mod| cut -d'/' -f 2)"
    git submodule add $repo $basePath/$sub
  done
else
  echo "missing arguments: must specify modules to remove"
fi
