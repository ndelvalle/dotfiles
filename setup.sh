#!/bin/sh

xcode-select --install

# Macos options
# Show path bar on finder
defaults write com.apple.finder ShowPathbar -bool true
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Use the commands below to increase the key repeat rate on macOS beyond the possible settings via the user interface.
# The changes aren't applied until you restart your computer.
# https://apple.stackexchange.com/a/83923
# Settings: System Preferences » Keyboard » Key Repeat/Delay Until Repeat
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 3

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
