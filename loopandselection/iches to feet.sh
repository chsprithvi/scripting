################# inches to feet

in=42
ft=12
a=$(( $in/$ft ))
b=$(( $in%$ft ))
echo $a.$b