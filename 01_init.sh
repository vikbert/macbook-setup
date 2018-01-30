#!/bin/bash
source ./mac_base.sh

############ install xcode  ############
function install_xcode(){
    xcode-select -v
    if [ $? -eq 0 ]; then
        doEcho "Xcode CLI is installed!"
    else
        doEcho "starting to install xcode cli ..."
        xcode-select --install
    fi
}

############ install brew  ############
function install_update_brew(){
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        doEcho "Homebrew caskroom installing ..."
        brew tap caskroom/cask
    fi
}

############ install apps via brew  ############
function brew_install_apps() {
  brew_install htop-osx
  brew_install cheat
  brew_install python3
  brew_install tree
  brew_install wget
}

############ install apps via caskroom  ############
function cask_install_apps() {
  # virtualization
  cask_install vagrant
  cask_install virtualbox
  cask_install virtualbox-extension-pack
  cask_install docker
  cask_install kitematic
  # browser
  cask_install google-chrome
  cask_install firefox
  cask_install vivaldi
  # windows manager
  cask_install alfred
  cask_install spectacle # window resizing
  # media
  cask_install vlc
  # terminal
  cask_install iterm2
  cask_install git
  # editor
  cask_install atom
  cask_install bear
  cask_install macdown
  # communication
  cask_install slack
  # database
  cask_install sequel-pro
  # documentation
  cask_install dash
}

## task to be executed
install_xcode
install_update_brew
brew_install_apps
#cask_install_apps
brew update && brew upgrade && brew cleanup; brew doctor # check the brew health
