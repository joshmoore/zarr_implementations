#!/usr/bin/env bash
#
# This is re-usable driver code for all of the implementations.
#

set -e
set -o pipefail

argparse(){
    case "${1}" in
        read)
            shift;
            echo "Reading data..."
            zi_read "$@";;
        write)
            echo "Generating data..."
            zi_write;;
        destroy)
            echo "Tearing down..."
            zi_destroy;;
        *)
            echo "Unknown command: ${1}"
            exit 2;;
    esac
}
