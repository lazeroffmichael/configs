#!/usr/bin/env BASH

pushd $DOTFILES
for folder in $(echo */ | sed "s/,/ /g")
do
    echo "Removing $folder"
    stow -D $folder
done
popd
