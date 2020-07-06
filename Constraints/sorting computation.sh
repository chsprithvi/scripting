read -p "Enter three numbers:" a b c
c1=$((a+b*c))
c2=$((a*b+c))
c3=$((c+a/b))
c4=$((a%b+c))

declare -A dt
dt[key1]="$c1"
dt[key2]="$c2"
dt[key3]="$c3"
dt[key4]="$c4"
echo "Dictionary is:" ${!dt[@]} ${dt[@]}

declare -a arr
arr=(${dt[@]})
echo "values in Array:" ${arr[*]}

for(( i=0; i<4; i++))
do
	for(( j=0; j<4-i-1; j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        	then
            		# swap 
		        temp=${arr[j]} 
            		arr[$j]=${arr[$((j+1))]}   
            		arr[$((j+1))]=$temp 
        	fi
	done
done
echo "Ascending order:" ${arr[*]}

for(( i=0; i<4; i++))
do
        for(( j=0; j<4-i-1; j++))
        do
                if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
                then
                        # swap
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done
echo "Descending order:" ${arr[*]}
