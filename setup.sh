#!/bin/bash
#install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#add cask repo
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
#install Keka
brew install --cask keka
#install Mounty
brew install --cask mounty
#install TeamViewer
brew install --cask teamviewer
#install Skype
brew install --cask skype
#install Google Chrome
brew install --cask google-chrome
#password policy
echo 'password' | pwpolicy  -setglobalpolicy 'minChars=8 requiresAlpha=1 requiresNumeric=1'
#update MacOS
echo 'Updating to Big Sur'
softwareupdate --fetch-full-installer
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/startosinstall --agreetolicense --forcequitapps --nointeraction
