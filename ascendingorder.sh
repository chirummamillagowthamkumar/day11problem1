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


sort[i]=$z
sort[j]=$w
sort[m]=$x

array[1]=${sort[i]}
array[2]=${sort[j]}
array[3]=${sort[m]}
array[4]=${sort[n]}
 for ((i=0;i<=4;i++))
 do
    for ((j=(($i+1));j<=4;j++))
    do
       if[ $arr[$i] -gt ${arr[$j]} ]
        then
            temp=${arr[$i]}
             arr[$i]=${arr[$j]}
             arr[$j]=$temp
        fi
     done
done
echo ${array[@]}


