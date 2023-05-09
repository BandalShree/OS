read -p "Enter Name of the File : " fileName
if [[ -f $fileName  &&  -r $fileName ]]
then
	echo "lines : $(wc -l < $fileName)"
	echo "words : $(wc -w < $fileName)"
	echo "characters : $(wc -m < $fileName)"
	read -p "Enter the string : " string
	echo "occurrences : $(grep -o $string $fileName | wc -l)"
else 
	echo "Either file not found or file don't have read access"
fi
