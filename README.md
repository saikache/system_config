##terminal color


#subl ~/.profile


function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$"


#alias commands

alias hi='cd && cd -'
alias f='free -lh'
alias s='git status'
alias r='rvm list'
alias rr='rvm gemset list'


rvm install "ruby-2.4.4"

rmagic

sudo apt install libmagickcore-dev

give permissions to normal user ubuntu
sudo usermod -a -G rvm $USER
