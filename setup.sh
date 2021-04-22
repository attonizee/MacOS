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
#setting wifi
networksetup -setairportpower en0 on
networksetup -addpreferredwirelessnetworkatindex en0 AmazingApps5 0 WPA2 k4FanshNGP4aTNuZQxAx
networksetup -addpreferredwirelessnetworkatindex en0 EpicGrowth5  0 WPA2 QQ3g2dctdUyUrQHWUkvA
networksetup -addpreferredwirelessnetworkatindex en0 FabiosaMedia5 0 WPA2 ghKQtdVrzGkQpHe2T3zu
networksetup -removepreferredwirelessnetwork en0 WikrGroup5GHz
networksetup -removepreferredwirelessnetwork en0 WikrGroup2GHz
networksetup -removepreferredwirelessnetwork en0 WikrGroup_Guest
networksetup -removepreferredwirelessnetwork en0 WikrGuest
#update MacOS
echo 'Updating to Big Sur'
softwareupdate --fetch-full-installer
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/startosinstall --agreetolicense --forcequitapps --nointeraction
