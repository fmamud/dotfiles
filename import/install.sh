#!/bin/bash

IMPORT_DIR="~/.dotfiles/import"

function import_source() {
    for file in $(find ~/.dotfiles/dots -name ".source"); do
        echo "> Installing source $file"
        source $file
    done
}

import_source ~/.dotfiles/dots
import_source .