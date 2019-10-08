#!/usr/bin/env bash

if [ -d /Applications/Google\ Chrome.app ]; then
	echo "Google Chrome already installed!"
else
	brew cask install google-chrome
fi
