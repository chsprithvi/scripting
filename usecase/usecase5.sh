part=1
full=2
totalSalary=0
number_of_working_days=20

wage_per_hour=20

for((day=1;day<=$number_of_working_days;day++))
do
	check=$((RANDOM%3))
	case $check in 

	1)	
		hours=4;;
	2)
		hours=8;;
	*)
		hours=0
	esac
	salary=$(($wage_per_hour*$hours))
	totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary