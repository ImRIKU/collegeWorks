clear
if [ $# -eq 0 ]; then
	echo "no files"
	exit
fi
for i in $*
do
	if [ -f $i ]; then
		echo "$i is a file"
		echo "Lines: $( cat $i | wc -l )"
		echo "Words: $( cat $i | wc -w )"
		echo "Characters: $( cat $i | wc -c )"
	else
		echo "Not a file: Directory $i"
	fi
done
