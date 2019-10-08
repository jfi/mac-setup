#!/usr/bin/env bash

if [[ $(xcode-select -p) == '' ]]; then
  xcode-select --install
  read -p "Are Command Line Tools now installed? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    true
  else
    exit 0
  fi
else
  echo "Command line tools are already installed!"
fi