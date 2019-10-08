#!/bin/sh

if [ -d /Applications/Sequel\ Pro.app ]; then
	echo "Sequel Pro already installed!"
else
  wget https://sequelpro.com/builds/Sequel-Pro-Build-97c1b85783.zip
  unzip Sequel-Pro-Build-97c1b85783.zip
  mv Sequel\ Pro.app /Applications/
  read -p "Is Sequel Pro now installed? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm Sequel-Pro-Build-97c1b85783.zip
  fi
fi
