#! /bin/bash -eu

docker build -t ssm-session-manager .
mkdir -p ~/bin
ln -fs $PWD/ssmsm ~/bin/ssmsm
