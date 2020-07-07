read -p "Enter your" s
if [[ ${#s} -ge 6 && "$s" == *[[:lower:]]* && "$s" == *[[:upper:]]* && "$s" == *[0-9]* ]]
echo yes
else
echo no
fi

