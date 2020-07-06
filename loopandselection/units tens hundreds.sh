############# units, tens, hundreds

count=0;
while [ $number -gt 0 ]
do
 #i am dividing and storing the value in same variable at one point it reaches 0   
 number=`expr $number / 10`
 $((count++))
done
echo $count
#this is normal switch case 
case $count in 
    1)
    echo "unit";;
    2)
    echo "tens";;
    3)
    echo "hundreds";;
    4)
    echo "thousand";;
    *)
    echo "no";;
esac
