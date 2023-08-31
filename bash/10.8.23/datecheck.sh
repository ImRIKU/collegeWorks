clear
echo "Put the day month and year"
read day mon yr
if [ $yr -le 0 -o $day -le 0 -o $mon -le 0 ]
	then echo "Invalid input"
elif [ $mon -gt 12 ]
	then echo "Invalid month"
else
	case $mon in
		1|3|5|7|8|10|12) if [ $day -le 31 ]
				then echo "valid day"
			else echo "invalid day"
			fi ;;
		4|6|11|9) if [ $day -le 30 ]
				then echo "valid day"
			else echo "invalid day"
			fi ;;
		2)	if [ `expr $yr % 400` -eq 0 -o `expr $yr % 100` -ne 0 -a `expr $yr % 4` -eq 0 ]
				then if [ $day -le 29 ]
						then echo "valid day"
					else echo "invalid day"
					fi
			elif [ $day -le 28 ]
					then echo "valid day"
			else echo "invalid day"
			fi ;;
	esac
fi
