#!/bin/bash
	echo  "enter your sentence :"
	read  sentence

longest=0
for word in $sentence
do
    len=${#word}

    if (( len > longest ))
    then
        longest=$len
        longword=$word
    fi

done
printf 'The longest word is %s and its length is %d.\n' "$longword" "$longest"


#
#smallest=0
#for word in $sentence
#do
#if (( len > smallest ))
#    then
#        smallest=$len
#        smallword=$word
#    fi
#done
#printf 'The smallest word is %s and its length is %d.\n' "$smallword" "$smallest">
