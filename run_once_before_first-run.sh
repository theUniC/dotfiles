#!/bin/env bash

# Install all packages
brew bundle

# Change default shell to ZSH
chsh -s /opt/homebrew/bin/zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Spacevim
curl -sLf https://spacevim.org/install.sh | bash
