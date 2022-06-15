#!/bin/bash

echo "Installing dotfiles"

for component in brew git zsh sdkman; do
    echo "> Installing ${component///}..."
    (cd dots/$component && ./install.sh)
done

echo "Installing imports"

import/install.sh