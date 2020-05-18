#! /bin/sh

image=pre-commit-docker

book=$(pwd)
container_book=/tmp/coursebook

this_file=$(python -c "import os; print(os.path.realpath('$BASH_SOURCE'))")
this_dir=$( cd -P "$( dirname $this_file )" && pwd )

ssh_cfg=~/.ssh
container_ssh_cfg=/root/.ssh

pcommit_cache=~/.cache/pre-commit
container_pcommit_cache=/root/.cache/pre-commit

# Force image rebuild to always grab the latest flamel version
docker build -t $image $this_dir

docker run \
     -v ${ssh_cfg}:${container_ssh_cfg} \
     -v ${pcommit_cache}:${container_pcommit_cache}:z \
     -v ${book}:${container_book}:z \
     ${image} $@
