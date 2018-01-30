#!/bin/bash
source ./mac_base.sh

# install PHP
function install_php() {
    brew tap homebrew/homebrew-php
    brew unlink php56
    brew_install php71
    export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"
    php -v
}

# install composer
function install_composer() {
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
  php composer-setup.php
  php -r "unlink('composer-setup.php');"
}

# install nodejs, npm and yarn
function install_node() {
    brew_install node
    brew_install yarn
}


## apply tasks
install_php
install_composer
install_node
