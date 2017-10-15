# ------------------------------------------------------------------
# functions
# ------------------------------------------------------------------
function down() { [ $# -eq 0 ] && termdown || termdown $(($1  * 60)) -b -t Ende && clear }

# docker login
function docker_login() { docker exec -it $1 bash }

# myIP address
function myip() {
  ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}
# turn hidden files on/off in Finder
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

# view man pages in Preview
function pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

# nice mount (http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
# displays mounted drive information in a nicely formatted manner
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# ------------------------------------------------------------------
# system wide
# ------------------------------------------------------------------
alias dus='du -sckx * | sort -nr'
alias bk='cd $OLDPWD'
alias ttop='top -ocpu -R -F -s 2 -n30'
alias lh='ls -a | egrep "^\."'
alias ..="cd .. && ls"
alias ...="cd ../.. && ls"
alias l='ls -alh'
alias h='cd ~'
alias c='clear'
alias t="down"
alias tm="tmux"
alias au="source ~/.zsh_aliases"
alias ae="vi ~/.zsh_aliases"
alias s="du -sh"
alias x="exit"
alias chrome="open /Applications/Google\ Chrome.app/ --args --disable-web-security"
alias ad="axel -n 10 -a"
# sort files in current directory by the number of words they contain
alias 'wordy=wc -w * | sort | tail -n10'
alias 'filecount=ls -aRF | wc -l'



# ------------------------------------------------------------------
# vagrant
# ------------------------------------------------------------------
alias vup='vagrant up'
alias vssh='vagrant ssh'

# ------------------------------------------------------------------
# docker & docker-compose
# ------------------------------------------------------------------

alias dlogin="docker_login"
alias dimages='docker images -a'
alias dis='docker images -aq'
alias drm-all='docker rm -f $(docker ps -a -q)'
alias drmi-all='docker rmi -f $(docker images -q)'
alias drmi='docker rmi -f '
alias dclean='dstop && drm-all && drmi-all'
alias dip="docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)"

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias gbu='git remote prune origin && gb'
alias gbd='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gb='git branch -v -a'
alias gc='git checkout'
alias gu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gls="git ls-files --others --exclude-standard"
alias glc="git log --oneline --decorate --color"
alias gmnf="git merge --no-ff"


# tmux alias
# -------------------------------------------------------------------
alias tmuxshop="tmux a -t ubup"
alias dollar="PS1='$ '"
alias catp="/usr/local/bin/pygmentize"

# FINDER sidebar
# ------------------------------------------------------------------
alias restore_finder="cd ~/Library/Preferences && sudo find com.apple.finder.plist* -exec rm {} \; && killall Finder"

#  editor
# ------------------------------------------------------------------
alias sl="/usr/local/bin/subl"
alias a="/usr/local/bin/atom"

# goto location
# ------------------------------------------------------------------
alias workspace="cd ~/workspace"
alias ubup="~/workspace/gitlab/ubupvm/"
alias ci="~/workspace/gitlab/ci/"

alias hallo="ubup && vagrant up && vagrant ssh"
alias ciao="ubup && vagrant suspend && exit"
alias reset="ubup && vagrant ssh -c 'docker-compose shop pwd'"
alias gw='gulp && gulp watch'
alias vm="workspace && cd gitlab/ubupvm"
alias shop="vm && cd shop"

# Blog vikbert-software.de
# ------------------------------------------------------------------
alias bdp="cd ~/workspace/vksde && gulp deploy --user 'vikbert-software.de' --password "

# media: download or play vide|music
# ------------------------------------------------------------------
alias mp="mpsyt"
alias youtube="mpsyt"
