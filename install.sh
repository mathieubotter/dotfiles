#!/bin/bash

# Homebrew
echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ""
echo "Brew bundle..."
brew bundle

echo ""
echo "Installing Ruby 2.3.1..."
rbenv install 2.3.1
rbenv global 2.3.1
gem install bundler

echo ""
echo "Done."
