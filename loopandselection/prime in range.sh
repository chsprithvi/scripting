################## prime in range

rime_1=0
echo "enter the range start"
read m
echo "enter end"
read n
echo " Primenumber between 1 to $n is:"
for((i=2;i<=n;))
do
for((j=i-1;j>=2;))
do
if [  `expr $i % $j` -ne 0 ] ; then
prime_1=1
else
prime_1=0
break
fi
j=`expr $j - 1`
done
if [ $prime_1 -eq 1 ]
then
if [ $i -ge $m ]
then
echo $i
fi
fi
i=`expr $i + 1`
done
