function getWorkingHours()
{
case $1 in 

	1)	
		hours=4;;
	2)
		hours=8;;
	*)
		hours=0
	esac
	echo $hours

}

part=1
full=2
max_hrs=100
emp_rate=20
working_days=20

total_work_hrs=0
total_working_days=0
declare -A dailywage

while(($total_work_hrs < $max_hrs && $total_working_days <  $working_days))
do
	total_working_days=$(($total_working_days+1))
	hours="$( getWorkingHours $((RANDOM%3)) )"
	total_work_hrs=$(($total_work_hrs+$hours))
	dailywage["Day $total_working_days"]="$(($emp_rate*$hours))"
done
totalSalary=$(($total_work_hrs*$emp_rate))
echo $totalSalary

for day in "${!dailywage[@]}"; 
do 
echo "$day - ${dailywage[$day]}";
done
echo ${dailywage[@]}