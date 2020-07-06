############## power of 2^n

read n
for (( i=1; i<=n; i++ ))
    do
    a=$((2**$i))
    echo $a
done
