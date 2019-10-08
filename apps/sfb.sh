#!/bin/sh

if [ -d /Applications/Skype\ for\ Business.app ]; then
	echo "Skype for Business already installed!"
else
  wget https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/skypeforbusinessinstaller-16.27.0.37.pkg
  open skypeforbusinessinstaller-16.27.0.37.pkg
  read -p "Is Skype for Business now installed? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm skypeforbusinessinstaller-16.27.0.37.pkg
  fi
fi
