#!/bin/bash

#to count the occurrences in a give n digit

c=0

echo "Enter Number "

read num

x=$num

echo "Enter the digit whose occurance has to be found "

read digit

while [ $num -ne 0 ]

do

rem=`expr $num % 10`

if [ $rem -eq $digit ]

then

c=`expr $c + 1`

fi

num=`expr $num / 10 `

done

echo "No of Occurance of "$digit "is : "$c" times" 

