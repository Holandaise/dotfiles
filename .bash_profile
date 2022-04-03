#
# ~/.bash_profile
#
export EDITOR=$(which vim)
export PATH=$PATH:$GOPATH/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"
