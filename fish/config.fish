#!/usr/local/bin/fish

# load the defined PATH variables in ~/.bash_profile; e.g. PATH for php@72
source ~/.bash_profile

# chapter project
# -------------------------------------------------------------------------------------------------
alias tsf='cd /Users/zhoux/sites/github/symfony-projects/testing-in-symfony'
alias ftest='cd /Users/zhoux/lidl/flyer/flyer-react; yarn run test:file'
alias fdata='cd /Users/zhoux/lidl/flyer/flyer-data; yarn run server'
alias freact='cd /Users/zhoux/lidl/flyer/flyer-react; yarn run start'
alias sitbot='cd /Users/zhoux/lidl/sitbot'
alias musk='cd /Users/zhoux/sites/github/react-projects/maxtimer; code .; nd'
alias chapteronly='cd /Users/zhoux/sites/github/symfony-projects/chapteronly; jb .'
alias gop='cd /Users/zhoux/sites/github/go-project'


# my new aliases 
# -------------------------------------------------------------------------------------------------
alias tm='cd /tmp/' 
alias bot='cd /Users/zhoux/lidl/chatbot-projects'
alias rmf='rm -rf '
alias csa='npx degit vikbert/sests '
alias cra='npx degit vikbert/vite-react-ts '
alias sit='cd /Users/zhoux/sites/github/sit-project'
alias siam='cd /Users/zhoux/lidl/vcs-schwarz/siam-oauth2-fake-server'
alias s3='s3cmd'
alias de='cd /Users/zhoux/sites/github/deutschkurs && code .'
alias storage='cd /Users/zhoux/lidl/chapter-storage'
alias storage-demo='cd /Users/zhoux/lidl/chapter-storage-symfony'
alias flyer='cd /Users/zhoux/lidl/flyer'
alias fl-react='flyer && cd flyer-react'
alias fl-data='flyer && cd flyer-data'
alias wal='cd /Users/zhoux/sites/github/svelte-projects/wal && code .'
alias koding='cd /Users/zhoux/sites/github/react-projects/koding && jb .'
alias slides='cd /Users/zhoux/sites/github/slides && code .'
alias deutsch='cd /Users/zhoux/sites/github/deutschkurs && code .'
alias dcss='curl https://raw.githubusercontent.com/vikbert/100daysofcode/master/markdown.css -o markdown.css'


# utilities
# -------------------------------------------------------------------------------------------------
alias serve='python -m SimpleHTTPServer'

# taskbook
alias t='tb -t '
alias tl='tb -l '
alias tc='tb -c '
alias th='tb -h'
alias td='tb -d'

# 定义vim 到 mvim
alias ce='export VISUAL=vim; crontab -e'

# images processing
alias png32="pngquant 32 --skip-if-larger --strip --ext=.png --force"
alias png16="pngquant 16 --skip-if-larger --strip --ext=.png --force"
alias png8="pngquant 8 --skip-if-larger --strip --ext=.png --force"
alias png="pngquant 4 --skip-if-larger --strip --ext=.png --force"
alias desk='cd /Users/zhoux/Desktop'

# heroku 
# -------------------------------------------------------------------------------------------------
alias he='heroku'
alias hedeploy='git push heroku master'


# frontend 
# -------------------------------------------------------------------------------------------------
alias create-svelte-app='npx degit sveltejs/template '
alias create-snapper-app='npx degit "sveltejs/sapper-template#rollup" '
alias create-vue-app='npx @vuesion/service create '
alias bd="bash deploy.sh"

# symfony 
# -------------------------------------------------------------------------------------------------
alias sf='symfony '
alias sc='symfony console '
alias ss='symfony serve'
alias conf='cd /Users/zhoux/sites/github/symfony-projects/conferony'
alias sso='cd /Users/zhoux/lidl/ssomoc'

# cypress 
# -------------------------------------------------------------------------------------------------
alias cyr='npx cypress run'
alias cyo='npx cypress open'

# jupyter notebook 
# -------------------------------------------------------------------------------------------------
alias notebook='jupyter notebook'
alias phpnote='cd /Users/zhoux/sites/jupyter-notebooks/php-notebooks; notebook;'
alias pythonnote='cd /Users/zhoux/sites/jupyter-notebooks/python-notebooks; notebook;'

# shortcut to github project
# -------------------------------------------------------------------------------------------------
alias stackpc='cd github/react-projects/stackpc'
alias bookstore='cd /Users/zhoux/sites/github/svelte-projects/svelte-bookstore'
alias vikbert='cd /Users/zhoux/sites/github/vikbert.github.io/app && code .'
alias pal='cd /Users/zhoux/sites/github/parcel-demo'
alias rolex='cd /Users/zhoux/sites/github/extensions-demo/rolex'
alias cy='cd /Users/zhoux/sites/github/cypress-demo'
alias nutab='cd /Users/zhoux/sites/github/extensions-demo/nutab'
alias yitab='cd /Users/zhoux/sites/github/extensions-demo/yitab'
alias github='cd ~/sites/github/' 
alias dianzi='cd ~/sites/github/dianzi; code .' 
alias 100="cd ~/sites/github/100daysofcode; code ."
alias zaobao='cd ~/sites/github/zaobao; code .'
alias aino='cd ~/sites/github/aino; code .'
alias meiri='cd ~/sites/github/meiri; code .'
alias life='cd ~/sites/github/lifegrid; code .'
alias lifets='cd /Users/zhoux/sites/github/typescript-projects/lifecalender-ts; code .'
alias nines='cd ~/sites/github/nines; code .'
alias mydev='cd /Users/zhoux/lidl/mydev.io; code .; npm run dev;'
alias pix='cd ~/sites/github/pixss; code .'
alias pixssvelte='cd /Users/zhoux/sites/github/svelte-projects/pixssvelte; code .'
alias pattern='cd ~/sites/github/react-pattern; code .'
alias minimal='cd ~/sites/github/minimal-react-starter; code .'
alias rmb='cd ~/sites/github/rmb'
alias retinder='cd ~/sites/github/retinder'
alias licai='cd /Users/zhoux/sites/github/licai'
alias guestbook='cd /Users/zhoux/sites/github/symfony-projects/guestbook'
alias schulung='cd /Users/zhoux/sites/github/schulung'
alias ts='cd /Users/zhoux/sites/github/typescript-projects'
alias effective='cd /Users/zhoux/sites/github/typescript-projects/effective-typescript'
alias maskr='cd /Users/zhoux/sites/github/maskr'
alias sfcom='cd /Users/zhoux/sites/github/svelte-projects/sf-components; code .'
alias toll='cd /Users/zhoux/sites/github/svelte-projects/toll; code .'
alias svelte='cd ~/sites/github/svelte-projects'
alias react='cd /Users/zhoux/sites/github/react-projects'


# Cloud Foundry 
# -------------------------------------------------------------------------------------------------
alias cflogin='cf login -a https://api.system.02.cf.eu01.stackit.schwarz --sso'
alias cfloginextern='cf login -a https://api.system.01.cf.eu01.stackit.cloud  --sso --skip-ssl-validation'
alias db-prod='cf target -s prod; cf ssh -L 63306:msd1448f7-mysql-0.node.dc1.a9ssvc:3306 carsales'
alias db-qa='cf target -s qa; cf ssh -L 63306:msd7123a6.service.dc1.a9ssvc:3306 carsales-qa'
alias db-staging='cf target -s staging; cf ssh -L 63306:msd6129ab-mysql-0.node.dc1.a9ssvc:3306 carsales-staging'
alias db-prod-carex='cf target -s prod; cf ssh -L 63306:msd752b7c.service.dc1.a9ssvc:3306 carex'
alias db-qa-carex='cf target -s qa; cf ssh -L 63306:msd706415.service.dc1.a9ssvc:3306 carex-qa'
# start a new queue worker
alias cfworker='cf_start_worker '
alias cfstream='cf_stream_log '
alias cfstatus='cf_status '
alias cfmq-prod='cfmq_prod'
alias cfmq-staging='cfmq_staging'
alias cfmq-qa='cfmq_qa'
# monitoring app status
function cf_status
  while true; cf app $argv; sleep 10; end;
end
# rabbitmq queue
function cfmq_prod
  cf ssh carsales -c 'while true; do curl -i http://a9s-brk-usr-0d6569e15bbf627f7c675b6c7e4f5ce95a884355:a9s4d2bd1f7313c98bbbb35d57873d90b0479b10689@rad13cc36.service.dc1.a9ssvc:15672/api/queues/%2f/messages; sleep 10; done;' | grep "messages_ready_ram"
end
function cfmq_staging
  cf ssh carsales-staging -c 'while true; do curl -i  http://a9s-brk-usr-b8dc830f0ab1633c2d42af5f89eda7db3e3e333f:a9s250bb478da8036f194676b595a0feb8d47922c7e@rad41ef64.service.dc1.a9ssvc:15672/api/queues/%2f/messages; sleep 10; done;' | grep "messages_ready_ram"
end

function cfmq_qa
  cf ssh carsales-qa -c 'while true; do curl -i  http://a9s-brk-usr-0f7d0945332006bbafc1309ab1bf5a2feb187e9f:a9s3150b1ecfdcbe2b147b77ceab656e0841c14d078@rad2210a9.service.dc1.a9ssvc:15672/api/queues/%2f/messages; sleep 10; done;' | grep "messages_ready_ram"
end
# start queue worker by given app name: carsales, carsales-staging, carsales-qa
function cf_start_worker
  cf ssh $argv -c "HOME=\$HOME/app source ./app/.profile.d/finalize_bp_env_vars.sh && cd app && bin/console messenger:setup-transports && bin/console messenger:consume async -vvv --limit=250 --time-limit=7200"
end

# record the stream log
function cf_stream_log
  cf logs $argv >> stream_$argv_(date +%F-%H:%M).log
end


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
alias carex='cd ~/lidl/carex'
alias lidl='cd ~/lidl/'
alias trace='cd ~/lidl/cartrace'
alias mob='cd /Users/zhoux/lidl/react-mob-programming'
alias test:jest='sms; docker-compose run --rm node npm run test '
alias test:jest:path='sms; docker-compose run --rm node npm test -- --runTestsByPath '
alias test:unit='sms; bash run.sh test:phpunit '
alias test:behat='sms; print "🔥 Please [npm run build], if JS files getting updated!  \n\n"; bash run.sh test:behat '
alias fe='cd ~/lidl/carsales/app/_frontend'
alias fd='sms; docker-compose run --rm --service-ports node npm start'
alias fb='sms; docker-compose run --rm node npm run build; cd -'
alias dc='docker-compose'
alias dcphp='docker-compose exec php  '
alias dcworker='sms; docker-compose exec php_worker bin/console '
alias worker_reset='sms; docker-compose stop php_worker; docker-compose up -d'
alias dccron='docker-compose exec php_cron bin/console '
alias t4='dcphp bin/console car:export:sap T4'
alias t5='dcphp bin/console car:export:sap T5'
alias hello='sms; docker-compose restart mailcatcher db nginx php php_worker rabbitmq redis minio_s3 httpbin'
alias ciao='sms; docker-compose stop' 


function reset:nginx
    sms; and bash run.sh reset:nginx
end

function reset:php
    sms; and bash run.sh reset:php
end

function worker:reset
    sms; 
    docker-compose stop php_worker
    docker-compose start php_worker
end
function worker:stop
    sms; 
    docker-compose stop php_worker
end
function db:clean
    sms
    docker-compose run --rm php bin/console doctrine:database:drop --if-exists -n --force
    docker-compose run --rm php bin/console doctrine:database:create --if-not-exists -n
    docker-compose run --rm php bin/console doctrine:migrations:migrate -vvv -n
end
function db:reset
    sms
    db:clean
    docker-compose run --rm php bin/console doctrine:fixtures:load -n
end
function reset
    sms; reset:php; reset:nginx; reset:db; reset:worker; fb;
end
function cleanfiles
  rm -rf '/Users/zhoux/lidl/carsales/logs/app/*'
  rm -rf '/Users/zhoux/lidl/carsales/logs/behat/screenshots/*'
  rm -rf '/Users/zhoux/lidl/carsales/logs/ngix/*'
  rm -rf '/Users/zhoux/lidl/carsales/uploads/*'
  rm -rf '/Users/zhoux/lidl/carsales/app/var/cache/dev/*'
  rm -rf '/Users/zhoux/lidl/carsales/app/var/cache/test/*'
  rm -rf '/Users/zhoux/lidl/carsales/app/var/log/*'
  rm -rf '/Users/zhoux/lidl/carsales/app/var/test.db*'
  rm -rf '/Users/zhoux/lidl/carsales/app/files/*'
  rm -rf '/Users/zhoux/lidl/carsales/uploads/*'
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


# composer 
# -------------------------------------------------------------------------------------------------
alias ci='composer install '
alias cs='composer search '
alias cr='composer require '
alias scr='symfony composer require'



# yarn
# -------------------------------------------------------------------------------------------------
alias y='yarn'
alias yi='yarn install'
alias ys='yarn start'
alias yb='yarn build'
alias yd='yarn dev'

# pnpm 
# -------------------------------------------------------------------------------------------------
alias ni='pnpm install '
alias nt='pnpm run test'
alias nr='pnpm rm '
alias nb='pnpm run build '
alias ns='pnpm run start '
alias nd='pnpm run dev '
alias nw='pnpm run watch'
alias nv='pnpm run validate'
alias np='pnpm run deploy'
alias nf='pnpm run format'
alias psize='npx package-size '

# brew
# -------------------------------------------------------------------------------------------------
alias bi='brew install'
alias bs='brew search'
alias php72='brew unlink php && brew link --overwrite --force php@7.2'
alias php73='brew unlink php && brew link --overwrite --force php@7.3'
alias php74='brew unlink php && brew link --overwrite --force php@7.4'
alias php80='brew unlink php && brew link --overwrite --force php@8.0'

# command
# -------------------------------------------------------------------------------------------------
alias wg='wget'
alias ..="cd ..; and  ls"
alias ...="cd ../..; and  ls"
alias version='echo nodejs; and  node -v; and  echo npm; and  npm -v; and  php -v; and  docker -v; and  zsh --version'
alias lh='ls -a | egrep "^\."'
alias l='ls -alh'
alias h='cd ~'
alias desk='cd /Users/zhoux/Desktop'
alias c='clear'
alias x="exit"
alias ap='cd ~/sites/github/awesome-macbook-setup/; and ga .; and gam "updated aliases"; and git push -f'
alias au='source ~/sites/github/awesome-macbook-setup/fish/config.fish; echo "fish aliases updated!"'
alias ae='vi ~/sites/github/awesome-macbook-setup/fish/config.fish'
alias as='alias | grep '
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true; and killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false; and killall Finder"
alias te="rm -rfv ~/.Trash"
alias pw="pwgen"
alias dp='bash deploy.sh'

# Git
# -------------------------------------------------------------------------------------------------
alias gru="git config --get remote.origin.url"
alias gd="git diff "
alias ga='git add '
alias gap='git add .; and git commit -m "updates"; git push -f'
alias gp='git push'
alias gpo='git push -u origin main'
alias gm="git add .; and git commit -m "
alias gam="git add .; and git commit -m 'updates' "
alias gma='git commit --amend'
alias gmd='git commit --amend --date='
alias gst='git status'
alias grh='git reset --hard'
alias gsp='git stash pop'
alias gcl='git clone '
alias gb='git branch'
alias gbd='git branch -D'
alias gbm='git branch -m '
alias gba='git branch -v -a'
alias gr='git remote -v'
alias gbr='git branch -r'
alias gc='git checkout'
alias gcb='git checkout -b '
alias gf='git fetch'
alias gu='git pull'
alias gur='git pull --rebase'
alias gl="git log --graph --decorate"
alias gcp='git cherry-pick '

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
function youtubed
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

function sort --description "clean up and sort files"
mkdir -p images docs software audio;
touch _tmp_.eml; set files *.eml; mv $files docs;
touch _tmp_.sh; set files *.sh; mv $files docs;
touch _tmp_.potx; set files *.potx; mv $files docs;
touch _tmp_.sql; set files *.sql; mv $files docs;
touch _tmp_.pptx; set files *.pptx; mv $files docs;
touch _tmp_.kdbx; set files *.kdbx; mv $files docs;
touch _tmp_.xlsx; set files *.xlsx; mv $files docs;
touch _tmp_.docx; set files *.docx; mv $files docs;
touch _tmp_.csv; set files *.csv; mv $files docs;
touch _tmp_.yml; set files *.yml; mv $files docs;
touch _tmp_.pdf; set files *.pdf; mv $files docs;
touch _tmp_.doc; set files *.doc; mv $files docs;
touch _tmp_.ppx; set files *.ppx; mv $files docs;
touch _tmp_.mht; set files *.mht; mv $files docs;
touch _tmp_.png; set files *.png; mv $files images;
touch _tmp_.zip; set files *.zip; mv $files software;
touch _tmp_.pkg; set files *.pkg; mv $files software;
touch _tmp_.json; set files *.json; mv $files docs;
touch _tmp_.mp3; set files *.mp3; mv $files audio;
end

