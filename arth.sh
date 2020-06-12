#!/bin/bash
echo "Welcome to arthimetic code"
declare -A Operation
read -p "Enter the a value: " a
read -p "Enter the b value: " b
read -p "Enter the c value: " c

result1=$((($a+$b)*$c))
Operation[op1]=$result1

result2=$((($a*$b)+$c))
Operation[op2]=$result2

result3=$((($c+$a)/$b))
Operation[op3]=$result3

result4=$((($a%$b)+$c))
Operation[op4]=$result4

#echo ${Operation[@]}
arr=(${Operation[@]})
#echo "${arr[@]}"
#sorted=($(printf '%s\n' "${arr[@]}"|sort))
IFS=$'\n' read -d '' -r -a a_out < <(printf '%s\n' "${arr[@]}" | sort)
#printf '%s\n' "${a_out[@]}"
#echo $sorted

for (( k=${#arr[@]}-1; k>=0; k-- )); do
	#statements
	echo "${a_out[$k]} "
done
