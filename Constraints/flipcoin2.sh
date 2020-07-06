head=1
tail=0
numflip=20
countHead=0
countTail=0
while [[ $countHead -lt 21 && $countTail -lt 21 ]]
do
	flipCheck=$((RANDOM%2))
	case $flipCheck in
		$head)
			((countHead++))
				;;
		$tail)
			((countTail++))
				;;
	esac
done


echo "Number of times Head occur :" $countHead
echo "Number of times Tail occur:" $countTail

if [[ $countHead -eq 21 && $countTail -eq 21 ]]
then
	#flipCoin()
	echo "Tie"
elif [[ $countHead -eq 21 ]]
then
	count=$(( countHead-countTail ))
        echo "Head won by " $count
else
	count=$(( countTail-countHead ))
        echo "Tail Won by " $count
fi