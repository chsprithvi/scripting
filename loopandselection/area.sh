################## area

lf=60
bf=40
d=$(($lf*$bf))
echo $(( $d * 92903 / 1000000 )) | sed 's/..$/.&/'
