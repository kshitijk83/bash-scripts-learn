#!/bin/bash
# Convert ts to js extension

for value in $1
do
    cp $value $( basename -s .ts $value ).js
done