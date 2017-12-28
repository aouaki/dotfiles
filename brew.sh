#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install zsh + tmux
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh
brew install tmux

# Install `wget` with IRI support.
brew install wget --with-iri

# Install python
brew install python
brew install python3

# Install Node.js
brew install node
brew install yarn

# Install more recent versions of some OS X tools.
brew install macvim --with-override-system-vim --with-cscope --with-lua
brew install neovim
brew install homebrew/dupes/grep

# Install other useful binaries.
brew install ack
brew install git
brew install hub
brew install imagemagick --with-webp
brew install cmake
brew install tree
brew install youtube-dl

# Install cask
brew install caskroom/cask/brew-cask

# Install GUI programs with cask
brew cask install dashlane
brew cask install sublime-text-3
brew cask install caskroom/fonts/font-hack
brew cask install virtualbox
brew cask install rowanj-gitx
brew cask install genymotion
brew cask install android-studio
brew cask install atom
brew cask install iterm2
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install alfred
brew cask install flux
brew cask install insomniax
brew cask install google-chrome
brew cask install skype
brew cask install android-file-transfer
brew cask install the-unarchiver
brew cask install google-drive
brew cask install spotify
brew cask install steam
brew cask install vlc
brew cask install vimediamanager
brew cask install station

# Remove outdated versions from the cellar.
brew cleanup

brew linkapps
