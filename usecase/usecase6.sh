part=1
full=2
max_hrs=100
emp_rate=20
working_days=20

total_work_hrs=0
total_working_days=0

while(($total_work_hrs < $max_hrs && $total_working_days <  $working_days))
do
	total_working_days=$(($total_working_days+1))
	check=$((RANDOM%3))
	case $check in 

	1)	
		hours=4;;
	2)
		hours=8;;
	*)
		hours=0
	esac
	total_work_hrs=$(($total_work_hrs+$hours))

done
totalSalary=$(($total_work_hrs*$emp_rate))
echo $totalSalary