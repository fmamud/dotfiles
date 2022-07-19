#!/bin/bash

curl -s "https://get.sdkman.io" | bash

source .source

ln -s ~/.dotfiles/dots/sdkman/config ~/.sdkman/etc/config

sdk install java
sdk install kotlin
sdk install gradle