#!/bin/bash

set -e
cd $(dirname "${BASH_SOURCE[0]}")
virtualenv --system-site-packages venv
source venv/bin/activate

pip install ipython
pip install tornado
pip install pyzmq

pip install pyephem

mkdir -p data
cd data

#
# As described at http://www.astronexus.com/node/34 this is a star
# catalog now hosted on github.  HOW COOL!
#
wget -O hygfull.csv -c \
  https://github.com/astronexus/HYG-Database/blob/master/hygfull.csv?raw=true