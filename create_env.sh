#!/usr/bin/env bash

conda --version &>/dev/null || (echo "Conda not found in PATH" && exit 1)

if ! conda env list | grep ^ansible-devops &>/dev/null
then
  conda env create
  exit $?
fi

exit 0
