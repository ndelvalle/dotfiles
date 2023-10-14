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

# Turn on mouse Touch-To-Click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
# Apply touch to click changes without restart
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

killall Finder

# Install Homebrew base packages
brew install git
brew install chezmoi

# Setup dotfiles and install remaining dependencies
chezmoi init --apply --force https://github.com/ndelvalle/dotfiles.git
