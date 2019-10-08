#!/usr/bin/env bash

if [ -d /Applications/Alfred\ 4.app ]; then
	echo "Alfred already installed!"
else
	brew cask install alfred
fi
