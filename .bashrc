# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -la'
alias gits='git status'


# Add defined ssh keys
eval `ssh-agent`
ssh-add ~/.ssh/github
ssh-add ~/.ssh/gitlab

# Pathing setup
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
