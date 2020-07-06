####################day and month b/w march 20 and june 20

flag=1
read day
read month
echo $day
echo $month
if [ $day -ge 1 -a $day -le 31 -a $month -ge 3 -a $month -le 6 ]
then
        if [ $month -eq 3 -a $day -lt 20 ]
        then
                flag=0
        fi
        if [ $month -eq 6 -a $day -gt 20 ]
        then
                flag=0
         fi
else
        flag=0
fi

if [ $flag == 1 ]
then
        echo true
else
        echo false
fi
