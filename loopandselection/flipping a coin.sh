###########flipping a coin

a=$((RANDOM))
b=$(($a%2))
if [ $a -eq 0 ]
then
echo "Heads"
else
echo "Tails"
fi
