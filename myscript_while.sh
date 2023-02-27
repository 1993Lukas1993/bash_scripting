#!/bin/bash


while [ -f ~/testfile ]
do
    echo "As of $(date), The test file exist"
    sleep 5
done

echo "As of $(date), The file no longer exist"
