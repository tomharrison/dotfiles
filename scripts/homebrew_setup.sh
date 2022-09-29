#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew bundle --file=~/.config/brewfile/Brewfile

# Remove outdated versions from the cellar
brew cleanup