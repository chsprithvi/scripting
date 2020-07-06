################### Add two dice values

function tempo(){
    a=$((RANDOM))
    b=$(($a%7))
    if [ $b -eq 0 ]
    then
        c=$(($b+1))
        echo $c
    else
        echo $b
    fi
}
d=$( tempo )
e=$( tempo )
f=$(( $d + $e )) 
echo $f