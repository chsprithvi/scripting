read -p "Enter your Mobile Number" name
pat="^[0-9]{1,3}\s[1-9][0-9]{9}$"
if  [[ $name =~ $pat ]]
then
echo yes
else
echo no
fi
