#!/bin/env bash

LOCKFILE="$HOME/.chezmoi_already_run.lock"

if [ -e "$LOCKFILE" ]; then
  echo "Chezmoi already initialized."
  exit 0
fi

touch $LOCKFILE


# Install all packages
brew bundle

# Change default shell to ZSH
chsh -s /opt/homebrew/bin/zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Spacevim
curl -sLf https://spacevim.org/install.sh | bash

# Prepare workspace directory
mkdir -p ~/workspace
