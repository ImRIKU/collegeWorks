clear
f1=$1
if [ -f $f1 ]; then
	exec < $f1
	echo "roll name marks grade">grade.txt
	while read line
	do
		set `echo $line`
		if [ $3 -gt 100 -o $3 -lt 0 ]; then
			grade="err"
		elif [ $3 -ge 90 ]; then
			grade="O"
		elif [ $3 -ge 70 ]; then
			grade="A"
		elif [ $3 -ge 60 ]; then
			grade="B"
		elif [ $3 -ge 50 ]; then
			grade="C"
		elif [ $3 -ge 40 ]; then
			grade="D"
		else [ $3 -lt 40 ]
			grade="F"
		fi
		echo "$1    $2  $3    $grade">>grade.txt
	done
	cat grade.txt
fi


