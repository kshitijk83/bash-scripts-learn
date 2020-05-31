#!/bin/bash
# Basic if statement

age=0

echo -n "Enter your Age: "
read age
echo "Permission: "
read permission

if [ $age -gt 18 ]
then
    echo you can go to the party
elif [ $permission == 'yes' ]
then
    echo you can go to the party but only before midnight
else
    echo you cannot go to party
fi

date