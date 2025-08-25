#!/bin/bash

echo "Enter the number"
read num
s=0
rev=0
temp=$num

while [ $num -gt 0 ]
do
    # Get Remainder
    s=$(( num % 10 ))

    # Build reverse as a number
    rev=$(( rev * 10 + s ))

    # Get next digit
    num=$(( num / 10 ))
done

if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
