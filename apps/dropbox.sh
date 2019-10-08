#!/usr/bin/env bash

if [ -d /Applications/Dropbox.app ]; then
	echo "Dropbox already installed!"
else
	brew cask install dropbox
fi
