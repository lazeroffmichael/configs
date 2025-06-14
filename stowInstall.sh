#!/usr/bin/env BASH

pushd $DOTFILES
for folder in $(echo */ | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
popd
