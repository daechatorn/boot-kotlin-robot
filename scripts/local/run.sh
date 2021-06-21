#!/usr/bin/env bash
ENV="local"

# Create virtualenv
#py -3 -m ./boot-kotlin-robot-env-python3
virtualenv -p python3 ./boot-kotlin-robot-env-python3
source ./boot-kotlin-robot-env-python3/bin/activate

## install libs that using in robot
pip install -r ../../requirements.txt

## command to run robot
robot -L TRACE --variable ENV:$ENV -d ../../results/$ENV ../../testcases/

exit 0
