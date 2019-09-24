#!/bin/bash
source ./base.sh

############ install brew  ############
function install_update_brew(){
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        doEcho "Homebrew"
    else
        doEcho "Homebrew caskroom"
        brew tap caskroom/cask
    fi
}

function install_fish_shell() {
    # @see http://theworkaround.com/2016/10/11/installing-fish-on-osx.html
    brew_install fish
    doEcho "fish shell"
    chsh -s /usr/local/bin/fish # switch default bash to fish shell
    if [ -f ~/.local/share/omf/init.fish ]; then
        doEcho "omf detected!"
    else
        curl -L http://get.oh-my.fish | fish # install oh_my_fish
        doEcho "omf"
    fi
}

############ install apps via brew  ############
function brew_install_apps() {
    brew_install tree
    brew_install wget
    brew_install node
    brew_install yarn
    brew_install pwgen
    brew_install tig
}

############ install apps via caskroom  ############
function cask_install_apps() {
    cask_install alfred
    cask_install spectacle
    cask_install iterm2
    cask_install lepton
    cask_install slack
    cask_install sequel-pro
}
function cask_virtualization_tools() {
    cask_install vagrant
    cask_install virtualbox
    cask_install virtualbox-extension-pack
    cask_install docker
    cask_install kitematic
}
function install_php72() {
    brew tap homebrew/homebrew-php
    brew unlink php71
    brew_install php72
    export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"
    php -v
}
function install_composer() {
    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/
    doEcho "composer"
}
function install_mpsyt_player() {
    brew_install ffmpeg
    brew install mpv
    pip3_install mps-youtube
    pip3_install youtube-dl
}

rm -rf installed.txt
install_update_brew
brew_install_apps
# cask_virtualization_tools
# install_mpsyt_player
cask_install_apps
install_composer
install_fish_shell
brew update && brew cleanup; brew doctor