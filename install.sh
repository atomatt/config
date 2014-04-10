#!/usr/bin/env bash

package=$1
if [ "$package" = "" ]; then
    package=`ls -d */`
fi

git submodule update --init
git submodule foreach git pull origin master
git submodule foreach git submodule update --init

stow -v -t ~ -R $package
