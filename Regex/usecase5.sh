read -p "Enter your" s
if  [[ ${#s} -ge 6 && "$s" == *[[:lower:]]* && "$s" == *[[:upper:]]* && "$s" == *[0-9]* ]]
then
echo yes
else
echo no
fi

