read -p "Enter file name : " fileName

if [[ ! -f $fileName && ! -r $fileName ]]
then
	echo "File No Found!"
	exit
fi

read -p "Enter the word you wanna replace : " oldWord
read -p "Enter the new word : " newWord

touch "temp"

sed "s/${oldWord}/${newWord}/g" $fileName > "temp"

mv "temp" $fileName
