#export GPG_TTY=$(tty)
#APPLE_SSH_ADD_BEHAVIOR='macos'
#ssh-add -K $HOME/.ssh/id_rsa

ssh-add --apple-use-keychain $HOME/.ssh/id_ed25519

export GO111MODULE=on
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/mybin:/usr/local/go/bin

alias watch1='watch -n 1 '

alias m='make'
alias mw='./mvnw'
alias mwcv='./mvnw clean verify'
alias gw='./gradlew'
alias gwt='./gradlew test'
alias gwb='./gradlew build'
alias gwcb='./gradlew clean build'

alias qdev='./mvnw compile quarkus:dev'

alias p='cd ~/Siva/Projects/'
alias my='cd ~/Siva/Projects/My'
alias s='cd ~/Siva/Projects/My/siva'


alias yi='yarn install'
alias ys='yarn start'

alias p='pulumi'
alias pli='pulumi login'
alias plo='pulumi logout'
alias pup='pulumi up'

alias vup='vagrant up'
alias vdest='vagrant destroy'
alias vhalt='vagrant halt'
alias vssh='vagrant ssh'
alias vprov='vagrant provision'

alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfaa='terraform apply --auto-approve'
alias tfd='terraform destroy'
alias tfda='terraform destroy --auto-approve'

alias dcubf='docker-compose up --build --force-recreate'
# alias dclean='docker images purge && docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias dclean="docker ps -aq --no-trunc -f status=exited | xargs docker rm"
alias dstop="docker ps -aq | xargs docker stop"
alias diclean='docker images -f "dangling=true" -q | xargs docker rmi'
alias lzd='lazydocker'
# delete docker images by created date
#docker image prune -a --force --filter "until=7h"

#search docker images by name
#docker images | awk '/^spring/ {print $0}'

#delete docker images by name
#docker images | awk '/^siva/ {print $3}' | xargs docker rmi

#export KUBE_EDITOR='code --wait'

alias k='kubectl'
alias kget='k get all'
alias klogs='k logs'

alias mk='minikube'
alias mkdb='mk dashboard'

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias listnm="find . -name "node_modules" -type d -prune -print | xargs du -chs"
alias deletenm="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"
