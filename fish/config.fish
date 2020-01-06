#!/usr/local/bin/fish

# load the defined PATH variables in ~/.bash_profile; e.g. PATH for php@72
source ~/.bash_profile

# 定义vim 到 mvim
alias ce='export VISUAL=vim; crontab -e'

# chrome shortcut 
# -------------------------------------------------------------------------------------------------
alias fo='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app=http://vertriebsportal.localhost:8080'
function foo
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app=$argv
end

# paths github
# -------------------------------------------------------------------------------------------------
alias gh='cd ~/sites/github/' 
alias dianzi='cd ~/sites/github/dianzi; code .' 
alias zaobao='cd ~/sites/github/zaobao; code .'
alias meiri='cd ~/sites/github/meiri; code .'
alias life='cd ~/sites/github/lifegrid; code .'
alias nines='cd ~/sites/github/nines; code .'
alias pattern='cd ~/sites/github/react-pattern; code .'
alias minimal='cd ~/sites/github/minimal-react-starter; code .'
alias rmb='cd ~/sites/github/rmb'
alias retinder='cd ~/sites/github/retinder'

# React & typescript
alias react-create='github; git clone https://github.com/vikbert/minimal-react-starter.git -s '

# paths SMS
# -------------------------------------------------------------------------------------------------
alias sms='cd ~/lidl/carsales'
alias run='sms; bash run.sh '
alias test:jest='sms; docker-compose run --rm node npm run test '
alias test:jest:path='sms; docker-compose run --rm node npm test -- --runTestsByPath '
alias test:unit='sms; rm -rf ./app/var/*.db*; bash run.sh test:phpunit '
alias test:behat='print "🔥 Please < npm run build >, if JS files getting updated!  \n\n"; sms; rm -rf ./app/var/*.db*; bash run.sh test:behat '
alias node:download='sms; docker-compose run --rm node npm run download' 
alias node:test='sms; docker-compose run --rm node npm run test ' 
alias fe='cd ~/lidl/carsales/app/_frontend'
alias fd='fe; y devserver'
alias ff='fe; node_modules/.bin/eslint --fix .'
alias mjest='fe; majestic --app'

function reset:nginx
    sms; and bash run.sh reset:nginx
end

function reset:php
    sms; and bash run.sh reset:php
end

function reset:db
    sms
    docker-compose run --rm php bin/console doctrine:database:drop --if-exists -n --force
    docker-compose run --rm php bin/console doctrine:database:create --if-not-exists -n
    docker-compose run --rm php bin/console doctrine:migrations:migrate -vvv -n
    docker-compose run --rm php bin/console doctrine:fixtures:load -n
end

function hello 
  sms 
  docker-compose up -d
end

function ciao 
  sms
  docker-compose stop
end

# utilities
# -------------------------------------------------------------------------------------------------
function localip --description "show local IP of your maschine"
    netstat -rn | grep 'default' | awk '{print $2}'
end

function publicip --description "show public IP of your machine"
    curl ifconfig.me
end

function pkill --description "pkill a process interactively"
  ps aux | peco | awk '{ print $2 }' | xargs kill
end

function port --description "show who is listening to the port $argv"
  lsof -n -i4TCP:$argv | grep LISTEN
end
function print --description "print text with color"
  printf "\033[32m $argv \033[0m"
end

# FINDER sidebar
# -------------------------------------------------------------------------------------------------
alias restore_finder="cd ~/Library/Preferences; and  sudo find com.apple.finder.plist* -exec rm {} \;; and  killall Finder"

# COFNIG
# -------------------------------------------------------------------------------------------------
alias ss='touch ~/.ssh/config; and cat ~/.ssh/config'

# composer 
# -------------------------------------------------------------------------------------------------
alias ci='composer install '
alias cs='composer search '
alias cr='composer require '


# yarn
# -------------------------------------------------------------------------------------------------
alias ns='npm search '
alias y='yarn'
alias yi='yarn install'
alias ys='yarn start'
alias yb='yarn build'
alias ya='yarn global add'
alias yd='yarn deploy'

# npm 
# -------------------------------------------------------------------------------------------------
alias ni='npm install '
alias nb='npm run build '
alias ns='npm run start '
alias nd='npm run dev '
alias np='npm publish '

# brew
# -------------------------------------------------------------------------------------------------
alias bi='brew install'
alias bs='brew search'

# TOOLs Software
# -------------------------------------------------------------------------------------------------
alias pw="pwgen"


# system wide
# -------------------------------------------------------------------------------------------------
alias ..="cd ..; and  ls"
alias ...="cd ../..; and  ls"
alias version='echo nodejs; and  node -v; and  echo npm; and  npm -v; and  php -v; and  docker -v; and  zsh --version'
alias lk='ls -a | egrep "^\."'
alias l='ls -alh'
alias h='cd ~'
alias c='clear'
alias x="exit"
alias ap='cd ~/sites/github/awesome-macbook-setup/; and ga .; and gm "update fish aliases"; and git push -f'
alias au='source ~/sites/github/awesome-macbook-setup/fish/config.fish; echo "fish aliases updated!"'
alias ae='vi ~/sites/github/awesome-macbook-setup/fish/config.fish'
alias as='alias | grep '
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true; and killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false; and killall Finder"
alias et="rm -rfv ~/.Trash"

# tree
# -------------------------------------------------------------------------------------------------
alias t='tree .'
alias t2='tree -L 2 .'
alias t3='tree -L 3 .'

# Git
# -------------------------------------------------------------------------------------------------
alias gt='git tag '
alias gap='git add .; and git commit -m "updates"; git push -f'
alias gam='git add .; and git commit -m "updates"'

alias gp='git push'
alias gpr='git push -u origin master'
alias gst='git status'
alias gm='git commit -m'
alias gca='git commit --amend'
alias gm-date='git commit --amend --date='
alias gclean='git clean -f -d'
alias gri='git rebase -i'
alias grc='git rebase --continue'
alias gb='git branch'
alias gbd='git branch -D'
alias gbr='git branch -r'
alias gba='git branch -v -a'
alias gc='git checkout'
alias gcb='git checkout -b '
alias gu='git pull'
alias gur='git pull --rebase'
function gcl --description "git clone then enter the directory"
  git clone $argv;
  cd $argv; and yarn install; and yarn start;
end
#alias gcl='git clone'
alias gf='git fetch'
alias gl="git log --graph --decorate"
alias greset='git reset --hard HEAD'
alias gtags='git ls-remote --tags'
alias gs='git stash'
alias gsl='git stash list'
alias gss='git stash save '
alias gsa='git stash apply'
alias gsp='git stash pop'

# flutter * dart
# -------------------------------------------------------------------------------------------------
alias ios="open -a Simulator"
function fcreate --description "create flutter project and enter there"
    flutter create $argv; and f; and cd $argv; and ls -al;
end
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
alias dup='docker-compose up -d; dlogs'
alias ddown="docker-compose down"
alias dstop='docker-compose stop'

# docker
# -------------------------------------------------------------------------------------------------
alias dps='docker ps'
alias dia="docker images -a"
alias drmi="docker rmi -f"
alias drm="docker rm -f"

# tig
# -------------------------------------------------------------------------------------------------
alias ts='tig status'

# use "cheat" for detect the usage of comand
# -------------------------------------------------------------------------------------------------
function cheat
  curl cheat.sh/$argv
end

# PluraSight download
# -------------------------------------------------------------------------------------------------
function sight
  cd ~/Movies/plura_sight
  youtube-dl --username "xun.zhou@lidl.com" --password "Albert&22912" --verbose --sleep-interval 120 "$argv"
end
