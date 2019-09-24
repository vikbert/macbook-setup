#!/bin/bash
function doEcho() {
  echo "$(tput setaf 2)[OK] $1 is installed $(tput sgr 0)" 
  echo "[OK] $1" >> installed.txt
}

function brew_install(){
  brew ls --versions "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1"
  else
    brew install "$1"
  fi
}

function cask_install(){
  brew cask ls --versions "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1"
  else
    brew cask install "$1"
  fi
}


function pip3_install(){
  pip3 show "$1"
  if [ $? -eq 0 ]; then
    doEcho "$1"
  else
    pip3 install "$1"
  fi
}
