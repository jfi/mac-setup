#!/usr/bin/env bash

if brew -v >/dev/null 2>&1; then
  echo "Homebrew already installed!"
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "--- Updating Homebrew ---"
brew update
echo "--- Upgrading Homebrew ---"
brew upgrade

brew tap homebrew/cask-versions
brew tap homebrew/cask-drivers
brew tap homebrew/bundle
brew tap homebrew/cask-fonts

echo "--- Cleaning up Homebrew ---"

brew cleanup
brew analytics off

packages=(
  asdf
  chruby
  coreutils
  fzf
  gpg
  postgresql
  ruby-install
  redis
  graphicsmagick
  mariadb@10.2
  shellcheck
  hugo
  mas
)

casks=(
  clipgrab
  font-fontawesome
  font-open-sans
  font-inconsolata
  font-nunito
  font-source-code-pro
  font-source-sans-pro
  epubquicklook
  leech
  muzzle
  mysides
  qlcolorcode
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  rubymine
  scriptql
  sonos
  suspicious-package
  transmit
  ubiquiti-unifi-controller
  viscosity
  vlc
  webpquicklook
  zoomus
)

echo "--- Installing Homebrew packages ---"
for package in "${packages[@]}"
do
  if brew info "$package" | grep "Not installed" >/dev/null 2>&1; then
    echo "$package is not installed, installing..."
    brew install "$package"
  else
    echo "$package is already installed"
  fi
done

echo "--- Starting Redis, MariaDB and PostgreSQL as services ---"
brew services start redis
brew services start mariadb@10.2
brew services start postgresql

echo "--- Sourcing chruby ---"
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

echo "--- Installing mas-cli ---"
if brew info mas >/dev/null 2>&1; then
  echo "mas is already installed"
else
  sudo mkdir -p /usr/local/Frameworks
  sudo chown -R "$(whoami)" /usr/local/Frameworks
  brew install mas
fi

echo "--- Installing Homebrew casks ---"
for package in "${casks[@]}"
do
  if brew cask list | grep "$package" >/dev/null 2>&1; then
    echo "$package is already installed"
  else
    echo "$package is not installed, installing..."
    brew cask install "$package"
  fi
done

echo "--- Fix MariaDB config folder ---"
mkdir /usr/local/etc/my.cnf.d
touch /usr/local/etc/my.cnf.d/.keep