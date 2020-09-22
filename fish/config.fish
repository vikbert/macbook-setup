#!/usr/local/bin/fish

# load the defined PATH variables in ~/.bash_profile; e.g. PATH for php@72
source ~/.bash_profile

# 定义vim 到 mvim
alias ce='export VISUAL=vim; crontab -e'

# jupyter notebook 
# -------------------------------------------------------------------------------------------------
alias notebook='jupyter notebook'
alias phpnote='cd /Users/zhoux/sites/jupyter-notebooks/php-notebooks; notebook;'
alias pythonnote='cd /Users/zhoux/sites/jupyter-notebooks/python-notebooks; notebook;'

# shortcut to github project
# -------------------------------------------------------------------------------------------------
alias rolex='cd /Users/zhoux/sites/github/extensions-demo/rolex'
alias nutab='cd /Users/zhoux/sites/github/extensions-demo/nutab'
alias yitab='cd /Users/zhoux/sites/github/extensions-demo/yitab'
alias gh='cd ~/sites/github/' 
alias dianzi='cd ~/sites/github/dianzi; code .' 
alias 100="cd ~/sites/github/100daysofcode; code ."
alias zaobao='cd ~/sites/github/zaobao; code .'
alias aino='cd ~/sites/github/aino; code .'
alias meiri='cd ~/sites/github/meiri; code .'
alias life='cd ~/sites/github/lifegrid; code .'
alias nines='cd ~/sites/github/nines; code .'
alias pix='cd ~/sites/github/pixss; code .'
alias pattern='cd ~/sites/github/react-pattern; code .'
alias minimal='cd ~/sites/github/minimal-react-starter; code .'
alias rmb='cd ~/sites/github/rmb'
alias retinder='cd ~/sites/github/retinder'
alias licai='cd /Users/zhoux/sites/github/licai'
alias guestbook='cd /Users/zhoux/sites/github/symfony5/guestbook'

# Cloud Foundry 
# -------------------------------------------------------------------------------------------------
alias cflogin='cf login -a https://api.system.eu03.stackit.schwarz --sso'
alias cflo='cf lo'
alias cfloginextern='cf login -a https://api.system.eu01.cloud.schwarz --sso'
alias cfdb='cf env carsales | grep mysql:'
alias db-prod='cf ssh -L 63306:msd1448f7-mysql-0.node.dc1.a9ssvc:3306 carsales'
alias db-qa='cf ssh -L 63306:msd94aac2-mysql-0.node.dc1.a9ssvc:3306 carsales-qa'
alias db-staging='cf ssh -L 63306:msd6129ab-mysql-0.node.dc1.a9ssvc:3306 carsales-staging'
alias db-prod-carex='cf ssh -L 63306:msd752b7c.service.dc1.a9ssvc:3306 carex'
alias db-qa-carex='cf ssh -L 63306:msd706415.service.dc1.a9ssvc:3306 carex-qa'

# log 
# -------------------------------------------------------------------------------------------------
function log
    if test $argv = 'carex'
        tail -f ~/lidl/carsales/logs/nginx/error.log ~/lidl/carsales/logs/nginx/app_error.log 
    else if test $argv = 'error'
        tail -f  ~/lidl/carsales/logs/app/dev.log | grep "error"
    else if test $argv = 'inventory'
        tail -f ~/lidl/carsales/logs/app/dev.log | grep "INVENTORY"
    else if test $argv = 'sap'
        tail -f ~/lidl/carsales/logs/app/dev.log | grep 'SAP Import'
    else if test $argv = 'anm'
        tail -f ~/lidl/carsales/logs/app/dev.log | grep 'A&M'
    else if test $argv = 'schwacke'
        tail -f ~/lidl/carsales/logs/app/dev.log | grep 'Schwacke'
    else
        tail -f ~/lidl/carsales/logs/app/dev.log
    end
end

# carsales 
# -------------------------------------------------------------------------------------------------
alias sms='cd ~/lidl/carsales'
alias test:jest='sms; docker-compose run --rm node npm run test '
alias test:jest:path='sms; docker-compose run --rm node npm test -- --runTestsByPath '
alias test:unit='sms; bash run.sh test:phpunit '
alias test:behat='sms; print "🔥 Please [npm run build], if JS files getting updated!  \n\n"; bash run.sh test:behat '
alias fe='cd ~/lidl/carsales/app/_frontend'
alias fd='fe; y devserver'
alias fb='fe; npm run build; cd -'
alias dc='docker-compose'
alias dcphp='docker-compose exec php bin/console '
alias dcworker='sms; docker-compose exec php_worker bin/console '
alias worker_reset='sms; docker-compose stop php_worker; docker-compose up -d'
alias dccron='docker-compose exec php_cron bin/console '
alias bmwimport='dcphp car:import:bmw:xml features/testFiles/bmwImport/BMW_SharePoint_00000583.valid.xml'
alias t4='dcphp car:export:sap T4'
alias t5='dcphp car:export:sap T5'

function reset:nginx
    sms; and bash run.sh reset:nginx
end

function reset:php
    sms; and bash run.sh reset:php
end

function reset:worker
    sms; 
    docker-compose stop php_worker
    docker-compose start php_worker
end

function clean:db
    sms
    docker-compose run --rm php bin/console doctrine:database:drop --if-exists -n --force
    docker-compose run --rm php bin/console doctrine:database:create --if-not-exists -n
    docker-compose run --rm php bin/console doctrine:migrations:migrate -vvv -n
end
function reset:db
    sms
    clean:db
    docker-compose run --rm php bin/console doctrine:fixtures:load -n
end
function reset
    sms; reset:php; reset:nginx; reset:db; reset:worker; fb;
end


# utilities
# -------------------------------------------------------------------------------------------------
function localip --description "show local IP of your maschine"
    ifconfig | grep 192.168.178.255 | awk '{print $2}'
end

function publicip --description "show public IP of your machine"
    curl ifconfig.me
end

function port --description "show who is listening to the port $argv"
  lsof -n -i4TCP:$argv | grep LISTEN
end

function print --description "print text with color"
  printf "\033[32m $argv \033[0m"
end

function wlan --description "wlan off|on"
  networksetup -setairportpower en1 $argv
end

# FINDER sidebar
# -------------------------------------------------------------------------------------------------
alias restore_finder="cd ~/Library/Preferences; and  sudo find com.apple.finder.plist* -exec rm {} \;; and  killall Finder"

# SSH config 
# -------------------------------------------------------------------------------------------------
alias ss='touch ~/.ssh/config; and cat ~/.ssh/config'

# composer 
# -------------------------------------------------------------------------------------------------
alias ci='composer install '
alias cs='composer search '
alias cr='composer require '


# yarn
# -------------------------------------------------------------------------------------------------
alias y='yarn'
alias yi='yarn install'
alias ys='yarn start'
alias yb='yarn build'
alias ya='yarn global add'
alias yd='yarn deploy'

# npm 
# -------------------------------------------------------------------------------------------------
alias ni='npm install '
alias nui='npm uninstall '
alias nb='npm run build '
alias ns='npm run start '
alias ns='npm search '
alias nd='npm run dev '
alias nw='npm run watch'
alias np='npm run deploy'
alias psize='npx package-size '
alias nlg='npm list -g --depth=0'

# brew
# -------------------------------------------------------------------------------------------------
alias bi='brew install'
alias bs='brew search'

# system wide
# -------------------------------------------------------------------------------------------------
alias ..="cd ..; and  ls"
alias ...="cd ../..; and  ls"
alias version='echo nodejs; and  node -v; and  echo npm; and  npm -v; and  php -v; and  docker -v; and  zsh --version'
alias lh='ls -a | egrep "^\."'
alias l='ls -alh'
alias h='cd ~'
alias c='clear'
alias x="exit"
alias ap='cd ~/sites/github/awesome-macbook-setup/; and ga .; and gam "updated aliases"; and git push -f'
alias au='source ~/sites/github/awesome-macbook-setup/fish/config.fish; echo "fish aliases updated!"'
alias ae='vi ~/sites/github/awesome-macbook-setup/fish/config.fish'
alias as='alias | grep '
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true; and killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false; and killall Finder"
alias et="rm -rfv ~/.Trash"
alias sf='symfony'
alias pw="pwgen"

# tree
# -------------------------------------------------------------------------------------------------
alias t='tree .'
alias t2='tree -L 2 .'
alias t3='tree -L 3 .'
alias t4='tree -L 4 .'
alias t5='tree -L 5 .'

# Git
# -------------------------------------------------------------------------------------------------
alias ga='git add '
alias gap='git add .; and git commit -m "updates"; git push -f'
alias gam='git add .; and git commit -m '
alias gp='git push'
alias gpr='git push --set-upstream origin master'
alias gst='git status'
alias gca='git commit --amend'
alias gm-date='git commit --amend --date='
alias gclean='git clean -f -d'
alias gb='git branch'
alias gbd='git branch -D'
alias gba='git branch -v -a'
alias gc='git checkout'
alias gcb='git checkout -b '
alias gf='git fetch'
alias gu='git pull'
alias gur='git pull --rebase'
alias gl="git log --graph --decorate"
alias gpick='git cherry-pick '

# flutter * dart
# -------------------------------------------------------------------------------------------------
alias ios="open -a Simulator"
alias fdevices="flutter devices"
alias frun="flutter run"

# vagrant
# -------------------------------------------------------------------------------------------------
alias vssh="vagrant ssh"
alias vup="vagrant up"

# docker-compose
# -------------------------------------------------------------------------------------------------
alias dstart='docker-compose start'
alias dlogs='docker-compose logs -tf'
alias dup='docker-compose up -d'
alias ddown="docker-compose down"
alias dstop='docker-compose stop'

# docker
# -------------------------------------------------------------------------------------------------
alias dps='docker ps'
alias dia="docker images -a"
alias drmi="docker rmi -f"
alias drm="docker rm -f"

# use "cheat" for detect the usage of command
# -------------------------------------------------------------------------------------------------
function cheat
  curl cheat.sh/$argv
end

# download: PluraSight video
# -------------------------------------------------------------------------------------------------
function sight
  cd ~/Movies/plura_sight
  youtube-dl --username "xun.zhou@lidl.com" --password "Albert&22912" --verbose --sleep-interval 120 "$argv"
end

# download: youtube to mp3
# -------------------------------------------------------------------------------------------------
function yd
  cd ~/Documents/music
  youtube-dl -x --audio-format mp3 "$argv"
end

# utilities
# -------------------------------------------------------------------------------------------------
function localip --description "show local IP of your maschine"
    ifconfig | grep 192.168.178.255 | awk '{print $2}'
end

function publicip --description "show public IP of your machine"
    curl ifconfig.me
end

function port --description "show who is listening to the port $argv"
  lsof -n -i4TCP:$argv | grep LISTEN
end

function print --description "print text with color"
  printf "\033[32m $argv \033[0m"
end

function wlan --description "wlan off|on"
  networksetup -setairportpower en1 $argv
end

