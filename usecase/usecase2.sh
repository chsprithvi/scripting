present=1
check=$((RANDOM%2))

if(($check==$present))
then
	wage_per_hour=20
	hours=8
	salary=$(($wage_per_hour*$hours))
else
	salary=0
fi
echo $salary