read -p "Enter the String : " str
if [ $str == $(echo $str | rev) ]
then
	echo "String is Palindrome"
else 
	echo "String is not Palindrome"
fi
