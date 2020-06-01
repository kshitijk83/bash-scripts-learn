#!/bin/bash
# Print a message about disk usage

space_free = $( df -h | awk '{ print $5 }'| sort -n | tail -n 1 | sed 's/%//' )

case $space_free in
    [1-5]*)
        echo Plenty of disk available
    ;;
    [6-7]*)
        echo There could be a problem in near future
    ;;
    8*)
        echo Maybe we should at clearing the old files
    ;;
    9*)
        echo We could have a serious problem our hand soon
    ;;
    *)
        echo Something is not quite right here
    ;;
esac