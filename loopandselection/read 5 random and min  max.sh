###########read 5 random and min , max

threeDigitNoOne=$(((RANDOM%900)+100))
threeDigitNoTwo=$(((RANDOM%900)+100))
threeDigitNoThree=$(((RANDOM%900)+100))

if [ $threeDigitNoOne -gt $threeDigitNoTwo ] && [ $threeDigitNoOne -gt $threeDigitNoThree ]
then
echo "$threeDigitNoOne is Maximum Value"
	if [ $threeDigitNoTwo -lt $threeDigitNoThree ]
	then
	echo "$threeDigitNoTwo is Minimum Value"
	else
	echo "$threeDigitNoThree is Minimum Value"
	fi
elif [ $threeDigitNoTwo -gt $threeDigitNoThree ]
then
echo "$threeDigitNoTwo is Maximum Value"
	if [ $threeDigitNoOne -lt $threeDigitNoThree ]
	then
	echo "$threeDigitNoOne is Minimum Value"
	else
	echo "$threeDigitNoThree is Minimum Value"
	fi
else
echo "$threeDigitNoThree is Maximum Value"
	if [ $threeDigitNoOne -lt $threeDigitNoTwo ]
	then
	echo "$threeDigitNoOne is Minimum Value"
	else
	echo "$threeDigitNoTwo is Minimum Value"
	fi
fi
