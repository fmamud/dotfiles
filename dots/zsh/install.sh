#!/bin/bash

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Installing ohmyzsh"
(cd .. && export ZSH=$HOME/.dotfiles/dots/.oh-my-zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")

rm -f ~/.zshrc && ln -s ~/.dotfiles/dots/zsh/.zshrc ~/.zshrc