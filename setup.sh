#!/bin/bash
set -eo pipefail

source ./setup.env
if [ ! -f ./skiffos/Makefile ]; then
    git submodule update --init --recursive
fi
cd ./skiffos
bash $@
