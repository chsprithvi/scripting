############### flip a coin 11 times

ount1=0
count2=0

while [ $count1 -lt 11 || $count2 -lt 11 ]
do
a=$((RANDOM))
b=$(($a%2))
if [ $a -eq 0 ]
then
count1=$(($count1+1))
echo "Heads"
else
count2=$(($count2+1))
echo "Tails"
fi

done
