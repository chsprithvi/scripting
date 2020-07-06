read -p "Enter your" name
pat="^[a-z]*{4,}(?=.[a-z]){4}$"
if  [[ $name =~ $pat ]]
then
echo yes
else
echo no
fi

