###################################### without sorting

function tempo(){
    a=$((RANDOM))
    b=$(($a%1000))
    if [ $b -lt 100 ]
    then
        c=$(($b+100))
        echo $c
    else
        echo $b
    fi
}
nos=()

for (( i=0; i<10; i++ ))
do
c=$( tempo )
nos+=($c)
done

echo "Original Numbers in array:"
for (( i = 0; i < 10; i++ ))
do
  echo ${nos[$i]}
done

biggest=${nos[0]} position=0

for i in "${!nos[@]}"; do
	(( ${nos[i]} > biggest )) && biggest=${nos[i]} position=$i
done

unset nos[$position]

biggest=${nos[0]} position=0

for i in "${!nos[@]}"; do
        (( ${nos[i]} > biggest )) && biggest=${nos[i]} position=$i
done

echo 2nd larget is $biggest

smaller=${nos[0]} position=0

for i in "${!nos[@]}"; do
        (( ${nos[i]} < biggest )) && smaller=${nos[i]} position=$i
done

echo 2nd smaller is $smaller
