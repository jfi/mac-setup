#!/bin/sh

# Make rspec show colours by default
echo "--colour" >> ~/.rspec
# TextMate everywhere
export VISUAL="mate -w"
export EDITOR="mate -w"

cp dotfiles/zshrc ~/.zshrc
cp dotfiles/editorconfig ~/.editorconfig
cp dotfiles/gemrc ~/.gemrc
cp dotfiles/gitattributes ~/.gitattributes
cp dotfiles/gitconfig ~/.gitconfig
cp dotfiles/gitignore ~/.gitignore
cp dotfiles/tm_properties ~/.tm_properties
cp dotfiles/ruby_version ~/.ruby_version
