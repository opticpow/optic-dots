sourceif() { if [ -f $1 ]; then . $1; fi }

sourceif ~/.../lib/path-manip.sh
sourceif ~/.bashrc../common
sourceif ~/.bashrc../local
sourceif ~/.bashrc../$USER
sourceif ~/.bashrc../$LOCAL

if [[ `whoami` == "root" ]]
then
  PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

alias vi=vim
alias ll='ls -al --group-directories-first --color=yes'
alias xpat='sudo puppet agent -t'
alias xrm='sudo rm'
alias xmkdir='sudo mkdir'
alias xchmod='sudo chmod'
alias xvi='sudo vim'
alias wget='wget --content-disposition'
alias tf='terraform'
alias pat='sudo /opt/puppetlabs/puppet/bin/puppet agent --test'

set -o vi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

if [ -d "/opt/puppetlabs" ] ; then
  PATH=/opt/puppetlabs/puppet/bin:$PATH
fi

export PATH


# vim: tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent:
