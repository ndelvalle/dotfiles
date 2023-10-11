#!/bin/sh

xcode-select --install

# Setup macos options
defaults write com.apple.finder ShowPathbar -bool true

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew base packages
brew install git
brew install chezmoi

# Setup dotfiles and install remaining dependencies
chezmoi init --apply https://github.com/ndelvalle/dotfiles.git
