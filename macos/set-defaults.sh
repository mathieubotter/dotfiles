# Sets macOS defaults.
#
# Run ./set-defaults.sh and you'll be good to go.

# Preferences
## Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

## Show the ~/Library folder.
chflags nohidden ~/Library

## Disable press-and-hold for keys in favor of key repeat.
#defaults write -g ApplePressAndHoldEnabled -bool false
## Set a really fast key repeat.
#defaults write NSGlobalDomain KeyRepeat -int 0

## Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Security
## Disable Captive Portal
defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false
