#!/bin/bash
source ./base.sh

function install_mpsyt_player() {
    brew_install ffmpeg
    brew install mpv
    pip3_install mps-youtube
    pip3_install youtube-dl
}

# play youtube in terminal
# @see https://www.ostechnix.com/mps-youtube-commandline-youtube-player-downloader/
install_mpsyt_player

brew_install httpie # simple http request client
brew_install pwgen # password generator
brew_install tig  # git graphen
brew_install cmatrix # matric monitoring protection
brew_install axel # faster download with 10x threads
brew_install googler # do google in terminal
