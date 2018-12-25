#!/bin/bash

num_a=100
num_b=20

echo "Is $num_a equal to $num_b"
[ $num_a -eq $num_b ]
echo $?

string_a=UNIX
string_b=GNU

echo "Is $string_a equal to $string_b"
[ $string_a = $string_b ]
echo $?

if [ $num_a -lt $num_b ]; then
	echo "$num_a is less than $num_b!"
else
	echo "$num_a is greater than $num_b!"
fi
