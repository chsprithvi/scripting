################### Sum and Avg of 5 random 2 digit

function tempo(){
a=$((RANDOM))
b=$(($a%100))
if [ $b -eq 0 ]
then
        c=$(($b+100))
        echo $c
else
        echo $b
fi
}

for k in 1 2 3 4 5
    do
    d=$( tempo )
    f=$(($f+$d))
done

echo $f
g=$(($f/5))
echo $g
