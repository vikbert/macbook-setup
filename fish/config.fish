#!/usr/local/bin/fish

# ensure starting fish shell in tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# load the defined PATH variables in ~/.bash_profile; e.g. PATH for php@72
source ~/.bash_profile

# 定义vim 到 mvim
alias ce='export VISUAL=vim; crontab -e'

# chrome shortcut 
# -------------------------------------------------------------------------------------------------
alias fo='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app=http://vertriebsportal.localhost:8080'

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

# React
alias react-create='github; git clone https://github.com/vikbert/minimal-react-starter.git -s '

# paths SMS
# -------------------------------------------------------------------------------------------------
alias sms='cd ~/lidl/carsales'
alias be='sms'
alias run='sms; bash run.sh '
alias run:behat='sms; bash run.sh test:behat'
alias fe='cd ~/lidl/carsales/app/_frontend'
alias fd='fe; y devserver'
alias ft='fe; y test'
alias mjest='fe; majestic --app'
alias ff='fe; node_modules/.bin/eslint --fix .'
alias btf='sms; bash run.sh test:phpunit --filter='
alias btg='sms; bash run.sh test:phpunit --group='
alias bta='sms; bash run.sh test:phpunit '

function reset-db
    sms
    docker-compose run --rm php bin/console doctrine:database:drop --if-exists -n --force
    docker-compose run --rm php bin/console doctrine:database:create --if-not-exists -n
    docker-compose run --rm php bin/console doctrine:migrations:migrate -vvv -n
    docker-compose run --rm php bin/console carsales:fixtures:load -n
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

# yarn
# -------------------------------------------------------------------------------------------------
alias ns='npm search '
alias y='yarn'
alias yi='yarn install'
alias ys='yarn start'
alias yb='yarn build'
alias ya='yarn global add'
alias yd='yarn deploy'

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
alias clone_editorconfig='cp ~/sites/github/awesome-macbook-setup/.editorconfig .editorconfig'

# tree
# -------------------------------------------------------------------------------------------------
alias t='tree .'
alias t2='tree -L 2 .'
alias t3='tree -L 3 .'

# Git
# -------------------------------------------------------------------------------------------------
alias gt='git tag '
alias ga='git add '
alias gap='git add .; and git commit -m "updates"; git push -f'

alias gp='git push'
alias gpr='git push -u origin master'
alias gst='git status'
alias gm='git commit -m'
alias gam='git commit --amend'
alias gm-date='git commit --amend --date='
alias gclean='git clean -f -d'
alias gri='git rebase -i'
alias grc='git rebase --continue'

alias gb='git branch'
alias gbr='git branch -r'
alias gba='git branch -v -a'

alias gc='git checkout'
alias gcb='git checkout -b '

alias gu='git pull'
alias gur='git pull --rebase'

alias gcl='git clone'
alias gf='git reflog'
alias gl="git log --graph --decorate"
alias greset='git reset --hard HEAD'
alias gtags='git ls-remote --tags'

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

# github
# -------------------------------------------------------------------------------------------------
alias github_config='git config user.name "Xun Zhou"; and git config user.email "segentor@gmail.com"'

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
