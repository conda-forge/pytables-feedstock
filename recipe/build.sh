#!/bin/bash

export BZIP2_DIR=$PREFIX
export HDF5_DIR=$PREFIX
export LZO_DIR=$PREFIX

# Remove the pre-cythonized files which may not be compatible.
rm -f tables/*.c

$PYTHON -m pip install --no-deps --no-cache-dir --ignore-installed .
