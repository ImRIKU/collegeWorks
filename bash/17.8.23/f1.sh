clear
echo "Put the size of the array:"
read n
for (( i=1; i<=n; i++ ))
do
	read a[i]
done
for (( i=n; i>1; i-- ))
do
	for (( j=1; j<i; j++ ))
	do
		if [ ${a[j]} -gt ${a[j+1]} ]
		then
			temp=${a[j]}
			a[j]=${a[j+1]}
			a[j+1]=$temp
		fi
	done
done
echo ${a[*]}
