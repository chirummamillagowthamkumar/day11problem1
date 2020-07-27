#!/bin/bash -x
declare -A Values
a=$(( RANDOM%99 ))
b=$(( RANDOM%99 ))
c=$(( RANDOM%99 ))
counter=0; 
compute1=$((($a + $b) * $c))
Values[1]=$compute1

compute2=$((($a * $b) + $c))
Values[2]=$compute2

compute3=$((($c + $a) / b))
Values[3]=$compute3

compute4=$((($a % $b) + $c))
Values[4]=$compute4

for key in ${Values[@]}
do
arrValues[counter++]=${Values[$key]}
echo $key ":" ${arrValues[$key]}
done
echo ${arrValues[@]}
for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arrValues[j]} -gt ${arrValues[$((j+1))]} ]
        then
            # swap
            temp=${arrValues[j]}
            arrValues[$j]=${arrValues[$((j+1))]}
            arrValues[$((j+1))]=$temp
        fi
     done
for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arrValues[j]} -lt ${arrValues[$(($j+1))]} ]
        then
            # swap
            temp=${arrValues[j]}
            arrValues[$j]=${arrValues[$((j+1))]}
            arrValues[$((j+1))]=$temp
        fi
    done
