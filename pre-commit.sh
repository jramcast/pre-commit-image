#! /bin/sh

#image=quay.io/someth2say/pre-commit:0.1.0
image=pre-commit-docker

book=$(pwd)
container_book=/tmp/coursebook

ssh_cfg=~/.ssh
container_ssh_cfg=/root/.ssh

pcommit_cache=~/.cache/pre-commit
containe_pcommit_cache=/root/.cache/pre-commit

docker build -t $image $HOME/Desarrollo/pre-commit-image

docker run \
     -v ${ssh_cfg}:${container_ssh_cfg} \
     -v ${pcommit_cache}:${containe_pcommit_cache}:z \
     -v ${book}:${container_book}:z \
     ${image} $@
