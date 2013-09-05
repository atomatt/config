#!/usr/bin/env bash

git submodule update --init
git submodule foreach git pull origin master
git submodule foreach git submodule update --init

stow -v -t ~ -R `ls -d */`
