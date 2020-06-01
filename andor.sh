#!/bin/bash
# and example

if [ -r $1 ] && [ -s $1 ]
then
    echo This file is useful
fi

if [ $USER == 'beast' ] || [ $USER == 'andy' ]
then
    ls -alh
else
    ls
fi