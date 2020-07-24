#!/bin/bash
echo  "enter a value"
read a
echo  "enter b value"
read b
echo  "enter c value"
read c

declare -A sort

z=$(($a+$b*$c))
w=$(($a/$b+$c))
x=$(($a+$b/$c))
y=$(($a%$b+$c))


sort[$z]=""
sort[$w]=""
sort[$x]=""

   echo "${!sort[@]}"
