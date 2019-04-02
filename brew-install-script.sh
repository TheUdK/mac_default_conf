#!/bin/sh

# Homebrew Script for OSX
# To execute: save and chmod +x ./brew-install-script.sh && ./brew-install-script.sh

cd

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Office
brew cask install microsoft-office
brew cask install protonmail-bridge

#Dev Tools
brew install git
brew install python

#SystemTools
brew cask install shiftit
brew cask install shimo
brew cask install royal-tsx
brew cask install teamviewer
brew cask install serial
brew cask install cyberduck
brew cask install 1password
brew cask install angry-ip-scanner
brew cask install powershell
brew install nmap
brew cask install homebrew/cask-drivers/brother-p-touch-editor
brew cask install homebrew/cask-drivers/brother-p-touch-update-software


#Communication Apps
brew cask install franz

#Web Tools
brew cask install google-chrome

#File Storage
brew cask install google-backup-and-sync

#Writing Apps
brew cask install visual-studio-code

#Entertainment
brew cask install spotify

#Terminal
brew cask install iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
#brew tap sambadevi/powerlevel9k
#brew install powerlevel9k
brew install wget
brew install thefuck

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

rm -rf .zshrc
wget https://github.com/theudk/mac_default_conf/raw/master/.zshrc
wget https://github.com/theudk/mac_default_conf/raw/master/com.googlecode.iterm2.plist
mv .zshrc ~/
mv com.googlecode.iterm2.plist ~/Library/Preferences/

#Removing Residual Files
rm -rf PowerlineSymbols.otf
rm -rf 10-powerline-symbols.conf
rm -rf com.googlecode.iterm2.plist
echo "Removeing Residual Files"

