#!/bin/bash

for f in logfiles/*.log
do
    tar -cvzf $f.tar.gz $f
done





