#!/bin/bash

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc