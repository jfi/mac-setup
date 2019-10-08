#!/usr/bin/env bash

if [ -d /Applications/1Password\ 7.app ]; then
	echo "1Password already installed!"
else
	brew cask install 1password	
fi

