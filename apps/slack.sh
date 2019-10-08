#!/bin/sh

if [ -d /Applications/Slack.app ]; then
	echo "Slack already installed!"
else
	brew cask install slack
fi
