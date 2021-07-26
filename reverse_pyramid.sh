#!/bin/bash

echo "Enter the number of rows: "
read rows

echo "Enter the number : "
read  number

echo

for((i=rows; i>=1; i--))
do
  for((j=i; j>=1; j--))
  do
	echo -n "$j"
  done

  echo
done
