#!/bin/bash
host=$1
port=$2
tries=600
for i in `seq $tries`; do
    if /bin/nc -z $host $port > /dev/null ; then
      # Ready
      exit 0
    fi
    /bin/sleep 0.1
done
# FAIL
exit -1