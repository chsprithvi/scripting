read -p "Enter your First Name" name
pat="^[A-Z](.*[a-z]){2}$"
if  [[ $name =~ $pat ]]
then
echo yes
else
echo no
fi
