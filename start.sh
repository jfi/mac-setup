#!/bin/sh

# Prompt for sudo password
echo "--- Prompting for sudo password ---"
sudo -v

# Install Command Line Tools for Xcode
echo "--- Installing Command Line Tools for Xcode ---"
sh "./dependencies/command_line_tools.sh"

# Setup oh-my-zsh
echo "--- Installing oh-my-zsh ---"
sh "./dependencies/oh-my-zsh.sh"

# Configure macOS defaults
echo "--- Set computer name ---"
sh "./config/name.sh"
echo "--- Configuring macOS defaults ---"
sh "./config/macos.sh"