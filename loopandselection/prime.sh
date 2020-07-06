############## prime

number=43 
i=2 
f=0 
n=$(($number/2))
while [ $i -le $n ] 
do
if [ `expr $number % $i` -eq 0 ]
then
f=1 
fi
i=`expr $i + 1` 
done
if test $f -eq 1 
then
echo "Not Prime"
else
echo "Prime"
fi
