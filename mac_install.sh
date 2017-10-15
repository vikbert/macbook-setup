#!/bin/bash

#xcode-select --install

# remove homebrew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

############ install brew  ############
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    brew tap caskroom/cask
fi

function doEcho() { echo "$(tput setaf 2)[OK] $1 $(tput sgr 0)" }

function cask_install(){
  brew cask ls --versions "$1" --caskroom=/opt/homebrew-cask/Caskroom
  if [ $? -eq 0 ]; then
    doEcho "$1 is installed"
  else
    brew cask install "$1" --caskroom=/opt/homebrew-cask/Caskroom
  fi
}

function brew_install(){
  brew ls --versions "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1 is installed"
  else
    brew install "$1"
  fi
}

function brew_install_apps() {
  brew_install bash-completion
  brew_install node
  brew_install axel # download accelerator
  brew_install htop-osx
  brew_install cheat
  brew_install pstree
  brew_install composer
  brew_install python3
  brew_install tmate
  brew_install tmux
  brew_install tree
  brew_install wget
  brew_install youtube-dl
  brew_install zsh-syntax-highlighting
}

############ Cask install  ############
function cask_install_apps() {
  # -- system
  cask_install vagrant
  cask_install virtualbox
  cask_install google-chrome
  cask_install firefox
  cask_install flashlight
  cask_install skype
  cask_install alfred # fast open app
  cask_install dropbox
  cask_install evernote
  cask_install spectacle # window resizing

  # -- media
  cask_install minitube
  cask_install vlc
  cask_install gimp

  # -- development
  cask_install iterm2
  cask_install robomongo
  cask_install git
  cask_install macdown
  cask_install atom
  cask_install toad
}

function composer_install_apps() {
  composer global require "phpmd/phpmd=*"
  composer global require "squizlabs/php_codesniffer=*"
  # config phpstorm to use phpmd php_codesniffer
  # https://confluence.jetbrains.com/display/PhpStorm/PHP+Code+Sniffer+in+PhpStorm#PHPCodeSnifferinPhpStorm-1.EnablePHPCodeSnifferintegrationinPhpStorm
}

function nodejs_install_app() {
  npm install -g redis-commander
}

# brew_install_apps
# cask_install_apps
# composer_install_apps
# nodejs_install_app
