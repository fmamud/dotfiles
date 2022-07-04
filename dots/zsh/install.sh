#!/bin/bash

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Installing ohmyzsh"
(cd .. && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")

ln -s ~/.dotfiles/dots/zsh/.zshrc ~/.zshrc