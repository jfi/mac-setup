# Mac Setup

A bundle of scripts I use to setup a new Mac.

Based on work from:

* https://github.com/kevinpapst/mac-os-setup
* https://github.com/fesja/dotfiles
* https://github.com/caius/zshrc
* https://github.com/bkuhlmann/mac_os-config

## Getting Started

1. Change your shell to `zsh` through macOS, and run the first script to do the machine setup:

```
chsh -s /bin/zsh
./start.sh
```

2. Then run the script that installs everything:

```
./go.sh
```

## What does this install?

### Environment

* Sets hostname
* oh-my-zsh
* Homebrew
* Ruby 2.6.5
* MariaDB 10.2
* PostgreSQL
* Creates `~/Projects` folder
* IR_Black theme for Terminal and TextMate

### Applications

* 1Password
* Alfred
* Balsamiq
* ClipGrab
* Color Picker
* Command Line Tools for Xcode
* Dropbox
* Fantastical
* Firefox
* Google Chrome
* Keep It
* Keynote
* last.fm
* Leech
* MacDown
* Microsoft Word
* Microsoft PowerPoint
* Microsoft Excel
* Muzzle
* Numbers
* OmniFocus
* OmniGraffle
* OneDrive
* Pages
* Philips Hue Sync
* Reeder
* Sequel Pro
* Skype for Business
* Slack
* SONOS Controller
* TextMate
* The Unarchiver
* Transmit
* Trello
* Tweetbot
* Ulysses
* UniFi Network Controller
* Viscosity
* VLC
* Zoom

### Utilities

* asdf
* chruby
* hugo
* mas-cli
* ruby-install
* shellcheck
* wget

## Customisation

If you want to fork this, replace with your own name and email address in:

* `dotfiles/gitconfig`
* `dotfiles/tm_properties`

## Can has?

* Move Homebrew installation to `brew bundle`
* Consistent dock setup (icons, etc.)
