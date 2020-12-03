#!/bin/bash -x

echo "Enter Three Number : "

for ((i=0;$i<3;i++))
do
	read n
	ar[i]=$n
done

echo ${ar[@]}

res=0

for((i=0;i<${#ar[@]};i++))
do
	res=$(($res+${ar[i]}))

	if [ $res -eq 0 ]
	then
		echo "The Number of Sum Zero = ${ar[@]}"
	fi
done
