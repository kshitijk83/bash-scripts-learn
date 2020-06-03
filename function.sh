#!/bin/bash
# function
print () {
    echo Hello $1
    return 5
    # return Exit_Status
}

print Kshitiz # $1 or we can say arguments
print Kumar
echo The previous \function has a \return value of $?

lines_in_file () {
    cat $1 | wc -l
}

num_lines=$( lines_in_file $1 )

echo This file $1 has $num_lines lines \in it

# variable scope
var_change () {
    local var1='local 1'
    echo Inside function: var1 is $var1 : var2 is $var2
    var1='changed again'
    var2='2 changed again'
}
var1='global 1'
var2='global 2'

echo Before \function call: var1 is $var1 : var2 is $var2
var_change
echo After \function call: var1 is $var1 : var2 is $var2

#override commands
ls () {
    command ls -lh
}

ls