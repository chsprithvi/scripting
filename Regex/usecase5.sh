read -p "Enter your" s
pat="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
if [[ $pat==$s ]]
echo yes
else
echo no
fi

