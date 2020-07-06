part=1
full=2

check=$((RANDOM%3))
wage_per_hour=20
case $check in 

1)	
	hours=4;;
2)
	hours=8;;
*)
	hours=0
esac
salary=$(($wage_per_hour*$hours))
echo $salary