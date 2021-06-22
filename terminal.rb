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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias hi='cd && cd -'
alias f='free -lh'
alias s='git status'
alias r='rvm list'
alias rr='rvm gemset list'
alias open='subl .'
alias link='ln -f -s /run/mysqld/mysqld.sock /tmp/mysql.sock'
alias c='PLUGINS=classic bundle exec rails c'
alias work='cd /home/office.zone/skache/work/wo/b2b-sales-tool'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

export INTERCOM_SECRET_KEY=xxxxxx

sudo snap install --classic heroku
