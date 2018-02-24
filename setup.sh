#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install global NPM packages
npm install --global yarn



DIRECTORY=$(cd "$(dirname "$0")"; pwd)

link() {
      # Force create/replace the symlink.
        ln -fs "${DIRECTORY}/${1}" "${HOME}/${2}"
    }

link ".antigenrc" ".antigenrc"

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
