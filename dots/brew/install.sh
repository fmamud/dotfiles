#!/bin/bash

# Install Homebrew or make sure it's up to date
which -s brew
if [[ $? != 0 ]] ; then
  echo "Homebrew not found. Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed. Updating..."
  brew update
  brew upgrade
fi

echo "Installing from Brewfile"
brew bundle install

brew analytics off
export HOMEBREW_NO_ANALYTICS=1

echo "Homebrew Cleanup..."
brew cleanup