##############dice b/w 1-6

a=$((RANDOM))
b=$(($a%7))
if [ $b -eq 0 ]
then
        c=$(($b+1))
        echo $c
else
        echo $b
fi