### terminal color


### subl ~/.profile


function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$"


### alias commands

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

### ----------------------
## Docker Commands
### ----------------------

--------
BUILD
--------
docker build . -t revolver-march
build -f Dockerfile.mqlistener . -t revolver-mq

BASH

docker exec -it inspiring_shirley /bin/bash
echo $SEED_LOGS_TO_FILE

docker stop 70c631d9f492  # container id

docker logs 943d64fcbdc7 # container_id


docker run -dp 9292:9292  c9a1601e778d # image_id

docker run  --name revolver_false  -dp 9292:9292  revolver-march


docker run  --name revolver-mq  -d  revolver-mq


docker exec -it revolver-mq /bin/bash

ip addr show docker0

docker rm revolver-mq -f
docker build -f Dockerfile.mqlistener . -t revolver-mq
docker run  --name revolver-mq --add-host=host.docker.internal:172.17.0.1  -d  revolver-mq

docker exec -it revolver-mq /bin/bash



