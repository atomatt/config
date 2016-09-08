#!/usr/bin/env bash

package=$1
if [ "$package" = "" ]; then
    package=`ls -d */`
fi

stow -v -t ~ -D $package
