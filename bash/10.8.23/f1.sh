clear
a=1
echo "Put 1 to show items"
echo "2 to show path"
echo "3 to who"
echo "4 to do sum"
echo "5 to show processes"
echo "* to exit"
while [ 1 ]
do
	echo "Put the number: "
	read a
	case $a in
		1) ls -l ;;
		2) pwd ;;
		3) who ;;
		4) echo "Enter two number: "
			read b c
			z=`expr $b + $c`
			echo"Sum : $z" ;;
		5) ps ;;
		*) exit ;;
	esac
done

