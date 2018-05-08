reset=$(tput sgr0)

export PS1='\[\e[1;32m\]\u:\[\e[1;34m\]\w \[\e[0;33m\](`gitbranch`)\[$reset\] $ '
alias l='ls -alHG'

alias p='pushd .'
alias o='popd'

HISTFILESIZE=50000

source ~/.git-completion.bash

# Git related
alias gco='git checkout'
alias gst='git status'
alias gad='git add'
alias gcm='git commit'

function gitbranch {
    (git symbolic-ref HEAD 2>/dev/null | cut -c 12-)
}


powerline-daemon -q
export PATH=$PATH:~/.conscript/bin:~/software

# project specific

#Vertica

# Environments
alias ssh-dp="ssh ec2-user@qa-investor-portal-2.aws.orchardplatform.com"
alias ssh-qa3="ssh jason.dolinger@qa-investor-portal-3.aws.orchardplatform.com"

# start postgres
alias start-pg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop-pg="pg_ctl -D /usr/local/var/postgres stop"

# scala
alias scala='scala -Dscala.color'
