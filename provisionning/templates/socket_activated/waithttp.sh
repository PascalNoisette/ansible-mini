#!/bin/bash
host=$1
port=$2
tries=600
for i in `seq $tries`; do
    if curl -m5 -skfI $host:$port > /dev/null ; then
      exit 0
    fi
    /bin/sleep 0.2
done
# FAIL
exit -1