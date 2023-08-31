clear
echo "Put the size of the array:"
read n
for (( i=1; i<=n; i++ ))
do
	read a[i]
done
echo ${a[*]}

flag=0
read -p "Put a number: " num
for (( i=1;i<=n;i++ ))
do
	if [ $num -eq ${a[i]} ]
		then echo "Number found in $i th position"
		flag=$(( flag+1 ))
	fi
done

if [ $flag -eq 0 ]
	then echo "Not found"
fi
