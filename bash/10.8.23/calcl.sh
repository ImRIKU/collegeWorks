clear
while [ 1 ]
do
	./a.out
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

