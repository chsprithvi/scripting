########### 2^n till 256

read n
a=1

while [ $a -lt $n ]
do
b=$((2**$a))
if [ $b -lt 256 ]
then
echo $b
fi
a=`expr $a + 1`
done
