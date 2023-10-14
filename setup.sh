#!/bin/sh

xcode-select --install

# Macos options
# Show path bar on finder
defaults write com.apple.finder ShowPathbar -bool true
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

killall Finder

# Install Homebrew base packages
brew install git
brew install chezmoi

# Setup dotfiles and install remaining dependencies
chezmoi init --apply --force https://github.com/ndelvalle/dotfiles.git
