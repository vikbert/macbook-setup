# Mac OS X Dev Setup for PHP Developer

This document describes how I set up my developer environment on a new MacBook or iMac. We will set up [Node](http://nodejs.org/) (JavaScript), [Python](http://www.python.org/), and [php](http://php.net) environments, mainly for `JavaScript` and `PHP` development. Even if you don't program in all three, it is good to have them as many command-line tools use one of them. As you read  and follow these steps, feel free to send me any feedback or comments you may have.

The document assumes you are new to Mac. The steps below were tested on **OS Sierra Version 10.12.6**.

## 01 Update XOS

First thing you need to do, on any OS actually, is update the system! For that: **Apple Icon > Software Update...**

## 02 Apply updates in System preferences

If this is a new computer, there are a couple tweaks I like to make to the System Preferences. Feel free to follow these, or to ignore them, depending on your personal preferences.

In **Apple Icon > System Preferences**:

- Trackpad > Tap to click
- Keyboard > Key Repeat > Fast (all the way to the right)
- Keyboard > Delay Until Repeat > Short (all the way to the right)
- Dock bar > Automatically hide and show the Dock with icons


## 03 Install `iTerm2` to replace default terminal
Open `Safari` to download from [https://www.iterm2.com/](https://www.iterm2.com/)

## 04 Install xcode `command line tools`
At first try to install xcode command line tools with

`$ xcode-select --install`

If not possible, xcode command line tool can be manuelly downloaded from
[download xcode cli installer here](https://developer.apple.com/download/more/)

install it manuelly, then upgrade xcode via `AppStore`

## 05 Install common used Apps
execute the script `01_init_install.sh`

```
# system utilities
install htop-osx
install cheat
install python3
install tree
install wget
install ack # better search tools than grep

# virtualization
install vagrant
install virtualbox
install virtualbox-extension-pack
install docker
install kitematic

# browser
install google-chrome
install firefox
install vivaldi

# windows manager
install alfred
install spectacle # window resizing

# media
install vlc

# terminal
install iterm2
install git

# editor
install atom
install bear
install macdown

# communication
install slack

# database
install sequel-pro

# documentation
install dash
```
# 06 Install Web Environment
execute the install script `bash 02_web_install.sh`

# 07 Install additional tools
execute the install script:

`$ bash 03_tool_install.sh`

# Note
- [Dropbox](https://www.dropbox.com/): File syncing to the cloud. I put all my documents in Dropbox. It syncs them to all my devices (laptop, mobile, tablet), and serves as a backup as well! **(Free for 2GB)**

- [Google Drive](https://drive.google.com/): File syncing to the cloud too! I use Google Docs a lot to collaborate with others (edit a document with multiple people in real-time!), and sometimes upload other non-Google documents (pictures, etc.), so the app comes in handy for that. **(Free for 5GB)**

- [lastpass](https://www.lastpass.com/enfUfi6rz6RIaAlTqEALw_wcB): Manage the passwords
 - [lastpass firefox plugin](https://addons.mozilla.org/de/firefox/addon/lastpass-password-manager/)
 - [lastpass chrome plugin](https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=de)

