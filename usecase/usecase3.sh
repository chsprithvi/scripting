part=1
full=2

check=$((RANDOM%3))
wage_per_hour=20
if(($check==$part))
then
	
	hours=4
elif(($check==$full))
then
	hours=8
else
	hours=0
fi
salary=$(($wage_per_hour*$hours))
echo $salary