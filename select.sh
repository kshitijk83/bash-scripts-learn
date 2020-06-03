#!/bin/bash
# Menu system

names="one two three quit"

PS3="Select: "

select name in $names
do
    if [ $name == 'quit' ]
    then
        break
    fi
    echo Hello $name
done

echo Bye\!\!