################################ sum of 3 digits is zero

n3=(-1 0 12 1 4 -100 100 23 -4 10)

for (( i=0; i<10; i++ ))
do
for (( j=$i+1; j<10; j++ ))
do
for (( k=$j+1; k<10; k++ ))
do
x=$(( ${n3[$i]}+${n3[$j]}+${n3[$k]} ))
if [ $x -eq 0 ]
then
echo ${n3[$i]} ${n3[$j]} ${n3[$k]}
fi
done
done
done
