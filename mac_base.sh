#!/bin/bash
function doEcho() {
  echo "$(tput setaf 2)[OK] $1 $(tput sgr 0)"
}

function brew_install(){
  brew ls --versions "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1 is installed"
  else
    brew install "$1"
  fi
}

function cask_install(){
  brew cask ls --versions "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1 is installed"
  else
    brew cask install "$1"
  fi
}
