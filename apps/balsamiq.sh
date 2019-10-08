#!/usr/bin/env bash

if [ -d /Applications/Balsamiq\ Mockups\ 3.app ]; then
	echo "Balsamiq Mockups already installed!"
else
	brew cask install balsamiq-mockups
fi
