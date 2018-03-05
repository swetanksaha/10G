#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo modprobe -q -r tn40xx
cd ${SCRIPT_DIR}/tn40xx-0.3.6.15

make clean && make
sudo make install

cd ${SCRIPT_DIR}
sudo modprobe tn40xx
