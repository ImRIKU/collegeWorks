clear
echo "1 to add"
echo "2 to sub"
echo "3 to mul"
echo "4 to div"
echo "5 to modulo"
echo "6 to pow"
echo "* to exit"

while [ 1 ]
do
	echo "choice: "
	read a
	echo "Put two numbers"
	read c d
	case $a in
		1) echo "The sum is: $(( $c+$d ))" ;;
		2) echo "The sub is: $(( $c-$d ))" ;;
		3) echo "The mul is: $(( $c*$d ))" ;;
		4) echo "The div is: $(( $c/$d ))" ;;
		5) echo "The modulo is: $(( $c%$d ))" ;;
		6) echo "The pow is: $(( $c**$d ))" ;;
		*) exit ;;
	esac
done

