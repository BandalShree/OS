read -p "Enter Directory Name : " dName
if [[ -d $dName && -r $dName ]] 
then
	echo "Files : $(find $dName -type f | wc -l)"
	echo "Directories : $(( $(find $dName -type d | wc -l) - 1))"
else
	echo "Either directory not found or dont have reading access"
fi
