#!/usr/bin/env bash

if [ -d /Applications/The\ Unarchiver.app ]; then
	echo "The Unarchiver already installed!"
else
	brew cask install the-unarchiver
fi
