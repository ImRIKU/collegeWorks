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

read -p "Enter the number you wanna search " num
first=1
last=$n
mid=1
while [ $num -ne ${a[mid]} ]
do
	mid=$(( (first+last)/2 ))
	echo $mid
	if [ $first -ge $last ]
	then
		exit
	fi
	if [ $num -gt ${a[mid]} ]
		then
			first=`expr $mid + 1`
	elif [ $num -lt ${a[mid]} ]
		then
			last=`expr $mid - 1`
	fi
done

if [ ${a[mid]} -eq $num ]
then
	echo "Number found in $mid position"
else
	echo "Number not found"
fi








