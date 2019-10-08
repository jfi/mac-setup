#!/bin/sh

if [ -d /Applications/TextMate.app ]; then
	echo "TextMate already installed!"
else
	brew cask install textmate	
fi

if [ -d ~/Library/Application\ Support/TextMate/Bundles/IR_Black.tmbundle ]; then
	echo "IR_Black theme for TextMate already installed!"
else
	git clone https://github.com/imeos/textmate2-irblack.git
	mkdir -p cd ~/Library/Application\ Support/TextMate/Bundles
	mv textmate2-irblack/IR_Black.tmbundle ~/Library/Application\ Support/TextMate/Bundles
	rm -rf textmate2-irblack
fi

if [ -d ~/Library/Application\ Support/TextMate/Plugins/editorconfig-textmate.tmplugin ]; then
	echo "EditorConfig plugin for TextMate already installed!"
else
	wget https://github.com/Mr0grog/editorconfig-textmate/releases/download/v0.3.1/editorconfig-textmate-0.3.1.tmplugin.zip
	unzip editorconfig-textmate-0.3.1.tmplugin.zip
	mv editorconfig-textmate.tmplugin ~/Library/Application\ Support/TextMate/Plugins/
	rm editorconfig-textmate-0.3.1.tmplugin.zip
fi

# Set file browser to the left
defaults write com.macromates.textmate fileBrowserPlacement left 