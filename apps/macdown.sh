#!/bin/sh

if [ -d /Applications/MacDown.app ]; then
	echo "MacDown already installed!"
else
	brew cask install macdown
fi
