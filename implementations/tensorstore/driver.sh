#!/usr/bin/env bash
#
#

ENVNAME=ZI_tensorstore

# Standard bootstrapping
IMPL=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT=$( dirname $IMPL)

write(){
    create_or_activate
    python $IMPL/generate_tensorstore.py
}

. $ROOT/.conda_driver.sh
. $ROOT/.bash_driver.sh
argparse "$@"
