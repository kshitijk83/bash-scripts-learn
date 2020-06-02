#!/bin/bash
# While loop

counter=1
while [ $counter -le 10 ]
do
    echo $counter
    (( counter++ ))
done

echo All \done

# for loop
echo For loop:
names='one two three four'

for name in $names
do
    echo $name
done
echo All \done

# range in for loop
for value in {10..0..2}
do
    echo $value
done
