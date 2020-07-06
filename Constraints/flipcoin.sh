H=1
T=0
ch=0
ct=0
total=30
read -p "Enter your choice:1.one_1 2.two_1 3.three_1" choice
declare -A one
declare -A two
declare -A three
function one_1()
{

	for(( i=1; i<=30; i++ ))
	do
		coinCheck=$((RANDOM%2))
		if [[ $coinCheck -eq $H ]]
		then
			one["$i"]="H"
			$((ch++))
		else
			one["$i"]="T"
			$((ct++))
		fi
	done

	echo ${one[@]}
	echo "num of heads are:"$ch
	echo "num of tails are:"$ct

	per_top=$(awk "BEGIN { pc=100*${ch}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
	per_bottom=$(awk "BEGIN { pc=100*${ct}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")

	echo "win percent of head are:" $per_top
	echo "win percent of tail are:" $per_bottom
}

function two_1()
{
	HH=1
	TT=0
	HT=2
	countHH=0
	countTT=0
	countHT=0

   for(( i=1; i<=30; i++ ))
   do
      coinCheck=$((RANDOM%3))
      if [[ $coinCheck -eq $HH ]]
      then
         two["$i"]="HH"
         $((countHH++))
      elif [[ $coinCheck -eq $TT ]]
		then
         two["$i"]="TT"
			$((countTT++))
		else
			two["$i"]="HT"
			$((countHT++))
      fi
   done

    echo ${two[@]}
    echo "num of HH are:"$countHH
    echo "num of TT are:"$countTT
    echo "num of HT are:"$countHT

    per_hh=$(awk "BEGIN { pc=100*${countHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_tt=$(awk "BEGIN { pc=100*${countTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
	per_ht=$(awk "BEGIN { pc=100*${countHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")


    echo "win percent of HH are:" $per_hh
    echo "win percent of TT are:" $per_tt
	echo "win percent of HT are:" $per_ht

}


function three_1()
{
   HHH=0
  	HHT=1
	HTH=2
	THH=3
	TTH=4
	TTT=5
	THT=6
	HTT=7

	declare -A three
   for(( i=1; i<=30; i++ ))
   do
      coinCheck=$((RANDOM%8))
		case $coinCheck in
					0)	three["$i"]="HHH" 
						$((countHHH++))
								;;
					1)three["$i"]="HHT" 
						$((countHHT++))
								;;
					2)three["$i"]="HTH" 
						$((countHTH++))
								;;
					3)three["$i"]="THH" 
						$((countTHH++))
								;;
					4)three["$i"]="TTH" 
						$((countTTH++))
                        ;;
					5)three["$i"]="TTT" 
						$((countTTT++))
                        ;;
				 	6)three["$i"]="THT" 
						$((countTHT++))
                        ;;
 					7)three["$i"]="HTT" 
						$((countHTT++))
                        ;;
		esac
   done
   echo ${three[@]}

    per_hhh=$(awk "BEGIN { pc=100*${countHHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_hht=$(awk "BEGIN { pc=100*${countHHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_hth=$(awk "BEGIN { pc=100*${countHTH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_thh=$(awk "BEGIN { pc=100*${countTHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_tth=$(awk "BEGIN { pc=100*${countTTH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_ttt=$(awk "BEGIN { pc=100*${countTTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_tht=$(awk "BEGIN { pc=100*${countTHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
    per_htt=$(awk "BEGIN { pc=100*${countHTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")


    echo "win percent of HHH are:" $per_hhh
    echo "win percent of HHT are:" $per_hht
    echo "win percent of HTH are:" $per_hth
    echo "win percent of THH are:" $per_thh
 	echo "win percent of TTH are:" $per_tth
 	echo "win percent of TTT are:" $per_ttt
 	echo "win percent of THT are:" $per_tht
 	echo "win percent of HTT are:" $per_htt

}

case $choice in
	1)
		one_1
			;;
	2)	
		two_1
		;;
	3)
		three_1
		;;
esac