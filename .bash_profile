#
# ~/.bash_profile
#
export EDITOR=$(which vim)
export GOPATH="$(go env GOPATH)"
export PATH=$PATH:$GOPATH/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
