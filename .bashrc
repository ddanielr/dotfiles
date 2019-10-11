# Name: .bashrc

# Syntax colorization:
export TERM=xterm-color

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export LS_OPTS="-la"
alias ll="ls ${LS_OPTS}"
alias gits='git status'
alias nuke="docker ps -q -a | xargs docker rm -f"

# Add defined ssh keys
eval `ssh-agent`
ssh-add ~/.ssh/github
ssh-add ~/.ssh/gitlab

# Pathing setup
export GPG_TTY=$(tty)
## Go Pathing
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

## Rust Pathing
export PATH="$HOME/.cargo/bin:$PATH"

# NVM bits
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
