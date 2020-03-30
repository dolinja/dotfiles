reset=$(tput sgr0)

export PS1='\[\e[0;31m\]\u:\[\e[1;32m\]\w\[\e[0;34m\]`gitbranch`\[$reset\] $ '
alias l='ls -alHG'

alias p='pushd .'
alias o='popd'

HISTFILESIZE=50000
#source ~/.git-completion.bash

# Git related
alias gco='git checkout'
alias gst='git status'
alias gad='git add'
alias gcm='git commit'

function gitbranch {
  branch=$(git symbolic-ref HEAD 2>/dev/null | cut -c 12-)
  if [ -n "$branch" ]
  then
    echo " ($branch)"
  fi
}


powerline-daemon -q
export PATH=/usr/local/opt/terraform@0.11/bin:$PATH:~/bin:~/.conscript/bin:~/software:~/bin:/Users/jdolinger/Library/Python/2.7/bin:/usr/local/Cellar/python/3.7.0/bin
# project specific

#Vertica


# start postgres
alias start-pg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop-pg="pg_ctl -D /usr/local/var/postgres stop"

# scala
alias scala='scala -Dscala.color'

alias dv="vsql -B dev-vertica-1.aws.orchardplatform.com -d orchard -U dbadmin -w optimize123"

# Environments
alias ssh-dp="ssh ec2-user@qa-investor-portal-2.aws.orchardplatform.com"
alias ssh-qa3="ssh -A jason.dolinger@qa-investor-portal-3.aws.orchardplatform.com"

# KORE
source /Users/jdolinger/kabbagedev/kore-tooling/.kore_commands

alias reset-audio="sudo killall coreaudiod"

export KUBECONFIG=~/.kube/config-payments-test

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias start-kafka="brew services start zookeeper; brew services start kafka"
alias stop-kafka="brew services stop kafka; brew services stop zookeeper"

#docker aliases
alias dkr-pss="docker stop $(docker ps -aq)"
alias dkr-psr="docker rm $(docker ps -aq)"

# K8S aliases
alias kjd="kubectl -n jdolinger"
alias kin="kubectl -n dev-insights"
alias kcore="kubectl -n dev-core"

alias samldev="'Duo Push'|saml2aws login --skip-prompt"
alias samlprod="'Duo Push'|saml2aws -a prod login --skip-prompt"
# maybe install this?
#https://github.com/derailed/k9s

# Insights shortcuts
alias common="cd ~/commondev"
alias insights="cd ~/cfaas"
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

function prefsvault() {
  kubectl -n dev-insights get pod | grep user-preferences-api | head -n 1 | awk '{print $1}' | xargs -I % kubectl exec -it % -n dev-insights more /app/config/secrets.json
}
