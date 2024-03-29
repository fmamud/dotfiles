#!/bin/bash

# Install Homebrew or make sure it's up to date
which -s brew
if [[ $? != 0 ]] ; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed. Updating..."
  brew update
  brew upgrade
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing from Brewfile"
brew bundle install

brew analytics off
export HOMEBREW_NO_ANALYTICS=1

echo "Homebrew Cleanup..."
brew cleanup
