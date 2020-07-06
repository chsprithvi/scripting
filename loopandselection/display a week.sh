############# display a week

a=$((RANDOM))
b=$(($a%7))

if [ $b -eq 0 ]
then
echo Monday
elif [ $b -eq 1 ]
then
echo Tuesday
elif [ $b -eq 2 ]
then
echo Wednesday
elif [ $b -eq 3 ]
then
echo Thursday
elif [ $b -eq 4 ]
then
echo Friday
elif [ $b -eq 5 ]
then
echo Saturday
elif [ $b -eq 6 ]
then
echo Sunday
fi
