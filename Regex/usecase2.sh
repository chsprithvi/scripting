read -p "Enter your Last Name" name
pat="^[A-Z](.*[a-z]){2}$"
if  [[ $name =~ $pat ]]
then
echo yes
else
echo no
fi

