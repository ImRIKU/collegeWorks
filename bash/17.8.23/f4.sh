clear
echo "Put your date of birth in dd-mm-yyyy"
read dob
IFS="/"
set $dob
d=$1
m=$2
y=$3
dd=`date +%d`
mm=`date +%m`
yy=`date +%m`
echo "Date of Birth: $d/$m/$y"
echo "Current date is: $dd/$mm/$yy"

