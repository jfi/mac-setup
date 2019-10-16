# Mac Setup

A bundle of scripts I use to setup a new Mac.

Based on work from:

* https://github.com/kevinpapst/mac-os-setup
* https://github.com/fesja/dotfiles
* https://github.com/caius/zshrc
* https://github.com/bkuhlmann/mac_os-config

## Getting Started

1. Change your shell to `zsh` through macOS:

```
chsh -s /bin/zsh
./start.sh
```

## What does this install?

### Environment

* Sets hostname
* oh-my-zsh
* Homebrew
* Ruby 2.6.3
* MariaDB 10.2
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
* Reeder
* Sequel Pro
* Skype for Business
* Slack
* TextMate
* The Unarchiver
* Transmit
* Trello
* Tweetbot
* Ulysses
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
