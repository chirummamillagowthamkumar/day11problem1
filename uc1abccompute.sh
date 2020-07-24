#!/bin/bash
echo "enter value of a" 
read a
echo "enter value of b"
read b
echo "enter value of c"
read c
z=$(($a+$b*$c))
declare -A compute
compute[$z]="compute"
echo "compute ${!compute[@]}"
