#!/bin/bash

for dir in $( ls -A -d */ | grep -vE '\.git$' ) ; do
    echo stow $dir -t $HOME
done
