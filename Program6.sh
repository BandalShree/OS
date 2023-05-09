read -p "Enter the file name : " fileName

echo $( cat $fileName | tr "[:punct:]" " " | tr "[:upper:]" "[:lower:]" | tr -s " " "\n" | sort | uniq -c | sort -nr )
