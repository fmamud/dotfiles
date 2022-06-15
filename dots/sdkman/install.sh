#!/bin/bash

curl -s "https://get.sdkman.io" | bash

source .source

ln -s ~/.dotfiles/sdkman/config ~/.sdkman/etc/config

sdk install java
sdk install gradle