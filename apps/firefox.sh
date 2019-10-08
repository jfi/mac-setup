#!/usr/bin/env bash

if [ -d /Applications/Firefox.app ]; then
	echo "Firefox already installed!"
else
	brew cask install firefox
fi
