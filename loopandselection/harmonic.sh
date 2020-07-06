############## harmonic 

read n
for (( i=1; i<=n; i++ ))
do
a=`echo $(( 1 / $i )) | bc -l`
b=`echo $(( $b + $a )) | bc -l`
done
echo $b | bc -l 
