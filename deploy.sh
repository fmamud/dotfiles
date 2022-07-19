#!/bin/bash

echo "Installing dotfiles"

for component in brew git zsh sdkman; do
    echo "> Installing ${component///}..."
    (cd ~/.dotfiles/dots/$component && ./install.sh)
done