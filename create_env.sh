#!/usr/bin/env bash -l

conda --version &>/dev/null || (echo "Conda not found in PATH" && exit 1)

if ! conda env list | grep ^ansible-devops &>/dev/null
then
  conda env create

  conda activate ansible-devops

  # Setup scripts to set environemnt variables
  # for the github api authentication
  mkdir -p $CONDA_PREFIX/etc/conda/activate.d
  mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d
  cp ansible-completion.bash $CONDA_PREFIX/etc/conda/activate.d/

  exit $?
fi

exit 0
