#!/bin/bash
# Basic arithmatic using let
# spaces not required without quotes
# with quotes you can write with spaces

let a=4+5
echo $a

let "a = 5 + 4"
echo $a

let a++
echo $a

let "a = 4 * 5"
echo $a

let "a = $1 +30"
echo $a

# Basic arithmatic using expr
# spaces are required and in quotes are not required
expr 5 + 4

expr 5 \* $1

a=$(expr 10 - 3)
echo $a

# Basic aithmatic using double parentheses

a=$((3+5))
a=$(( 4 + 5 ))
b=$((a+3))
echo $b

((b++))

# Length of a variable
a='Hello World'
echo ${#a}
b=4567
echo ${#b}