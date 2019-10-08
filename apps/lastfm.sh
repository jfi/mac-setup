#!/bin/sh

if [ -d /Applications/last.fm.app ]; then
	echo "last.fm already installed!"
else
  wget https://cdn.last.fm/client/Mac/Last.fm-2.1.36.zip
  unzip Last.fm-2.1.36.zip
  mv Last.fm.app /Applications
  read -p "Is last.fm now installed? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm Last.fm-2.1.36.zip
  fi
fi
