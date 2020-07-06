############# prime and palindrome

echo "Enter the number"
read num

i=2 
f=0 
n=$(($num/2))
while [ $i -le $n ] 
do
if [ `expr $num % $i` -eq 0 ]
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
zzz=$num
fi

s=0 
rev=""
temp=$num 

while [ $num -gt 0 ] 
do
	s=$(( $num % 10 )) 
	num=$(( $num / 10 )) 
	rev=$( echo ${rev}${s} ) 
done

if [ $temp -eq $rev ]; 
then
	echo "Number is palindrome"
    zzz2=$num
else
	echo "Number is NOT palindrome"
fi

if [ $zzz -eq $zzz2]
then
echo $num is prime and palindrome
