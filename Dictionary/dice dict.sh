############################# dice

declare -A ash
flag=1

while [ $flag -eq 1 ]
do
a=$((RANDOM))
b=$(($a%7))
if [ $b -eq 0 ]
then
        c=$(($b+1))
        ash[$c]=$((${ash[$c]}+1))
        echo $c
else
        echo $b
        ash[$b]=$((${ash[$b]}+1))
fi

for i in ${!ash[@]}
do
z=${ash[$i]}
if [ $z -le 10 ]
then
flag=1
else
flag=0
fi
done

done

echo ${!ash[*]}
echo ${ash[*]}

#Sort the array:
{ read min; max=$(tail -n1); } < <(printf "%s\n" "${ash[@]}" | sort -n)
# print min and max elements:
echo "min=$min"
echo "max=$max"


echo ${!ash[$min]}
echo ${!ash[$max]}
