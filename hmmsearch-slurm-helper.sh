#!bin/bash

for f in $(find *.sh)
do
    ./hmmsearch.sh $f
done
