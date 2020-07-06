############################# range 0-100, twice digits

nos=()
n=100
for (( i=1; i<$n; i++ ))
do
k=$(($i%11))
if [ $k -eq 0 ]
then
c=$i
nos+=($c)
fi
done

echo "Original Numbers in array:"
for (( i = 0; i < 10; i++ ))
do
  echo ${nos[$i]}
done

