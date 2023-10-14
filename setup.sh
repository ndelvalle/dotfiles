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

# Install Homebrew
# https://github.com/orgs/Homebrew/discussions/4311#discussioncomment-5240151
sudo echo " "
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Add Homebrew to PATH
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ndelvalle/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Homebrew base packages
brew install git
brew install chezmoi

# Setup dotfiles and install remaining dependencies
chezmoi init --apply --force https://github.com/ndelvalle/dotfiles.git
