read -p "Enter the file name : " fileName 

content=$( tr "[:upper:]" "[:lower:]" < $fileName | tr -d "[:punct:]" ) 

echo $content | cat > "temp"

echo $( wc -w < "temp" )



