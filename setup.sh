#!/bin/bash
set -eo pipefail

source ./setup.env
if [[ ! -f ./skiffos/Makefile || ! -d ./configs/flightstack/common ]]; then
    git submodule update --init --recursive
fi
cd ./skiffos
bash $@
