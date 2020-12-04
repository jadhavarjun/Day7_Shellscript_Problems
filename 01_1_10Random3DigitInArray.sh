
#!/bin/bash

for ((i=0;i<10;i++))
do
	ar[i]=$((100+$RANDOM%100))
done

echo "${ar[@]}"
Large=${ar[0]}
SecondGreatest='unset'

for((i=1; i < ${#ar[@]}; i++))
do
	if [[ ${ar[i]} > $Large ]]
	then
		SecondGreatest=$large
		Large=${ar[i]}
	elif (( ${ar[i]} != $Large )) && { [[ "$SecondGreatest" = "unset" ]] || [[ ${ar[i]} > $SecondGreatest ]]; }
	then
		 SecondGreatest=${ar[i]}
	fi
done

echo "Second Largest = $SecondGreatest "

Small=${ar[0]}
SecondSmallest='unset'

for ((i=1;i<${#ar[@]};i++))
do
	if [[ ${ar[i]} < $Small ]]
	then
		SecondSmallest=$Small
		Small=${ar[i]}
	elif (( ${ar[i]} != $Small )) && { [[ "$SecondSmallest" = "unset" ]] || [[ ${ar[i]} < $SecondSmallest ]]; }
	then
		 SecondSmallest=${arr[i]}
	fi
done
echo "second smallest = $SecondSmallest"
