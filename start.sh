#!/bin/sh

# Prompt for sudo password
echo "--- Prompting for sudo password ---"
sudo -v

# Install Command Line Tools for Xcode
echo "--- Installing Command Line Tools for Xcode ---"
sh "./dependencies/command_line_tools.sh"

# Setup oh-my-zsh and homebrew
echo "--- Installing oh-my-zsh ---"
sh "./dependencies/oh-my-zsh.sh"
echo "--- Installing Homebrew ---"
sh "./dependencies/homebrew.sh"

# Install wget to make my life easier
echo "--- Installing wget ---"
sh "./dependencies/wget.sh"

# Configure macOS defaults
echo "--- Set computer name ---"
sh "./config/name.sh"
echo "--- Configuring macOS defaults ---"
sh "./config/macos.sh"

# Install the IR_Black theme for Terminal
echo "--- Installing IR_Black theme for Terminal ---"
sh "./config/terminal.sh"

# Install TextMate and the IR_Black theme
echo "--- Installing TextMate with IR_Black theme ---"
sh "./apps/textmate.sh"

# Setup dotfiles
echo "--- Installing configuration files ---"
sh "./dotfiles/install.sh"

# Install 1Password
echo "--- Installing 1Password ---"
sh "./apps/1password.sh"

echo "--- Installing applications from the Mac App Store ---"
sh "./apps/appstore.sh"

# Setup SSH key
echo "--- Setting up new SSH key ---"
sh "./install/ssh.sh"

# Install apps
echo "--- Installing The Unarchiver ---"
sh "./apps/the-unarchiver.sh"
echo "--- Installing Dropbox ---"
sh "./apps/dropbox.sh"
echo "--- Installing Google Chrome ---"
sh "./apps/chrome.sh"
echo "--- Installing Firefox ---"
sh "./apps/firefox.sh"
echo "--- Installing Alfred ---"
sh "./apps/alfred.sh"
echo "--- Installing Balsamiq ---"
sh "./apps/balsamiq.sh"
echo "--- Installing Slack ---"
sh "./apps/slack.sh"
echo "--- Installing MacDown ---"
sh "./apps/macdown.sh"
echo "--- Installing Sequel Pro ---"
sh "./apps/sequel-pro.sh"
echo "--- Installing Skype for Business ---"
sh "./apps/sfb.sh"
echo "--- Installing last.fm ---"
sh "./apps/lastfm.sh"

# Development environment setup
echo "--- Creating ~/Projects folder ---"
mkdir ~/Projects >/dev/null 2>&1

echo "--- Install Ruby ---"
if ruby -v | grep "2.6.3" >/dev/null 2>&1 ; then
  echo "Ruby 2.6.3 is already installed"
else
  echo "Ruby 2.6.3 is not installed, installing..."
  ruby-install ruby-2.6.3
fi

echo "--- Configure asdf ---"
sh "./config/asdf.sh"