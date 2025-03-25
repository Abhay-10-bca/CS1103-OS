#!/bin/bash

list_directory_contents() {
echo "Listing contents of the current directory:"
ls -l
echo ""
}

filter_and_sort_contents() {
read -p "Enter a pattern to filter files (e.g., .txt for text files): " pattern
echo "Filtering and sorting files with pattern '$pattern'..."

ls -l | grep "$pattern" | sort
echo ""
}

echo "Piping Commands Manager"
echo "1. List contents of the current directory"
echo "2. Filter and sort directory contents"
echo "3. Exit"

while true; do
read -p "Select an option (1-3): " option
case $option in
1) 
list_directory_contents
;;
2) 
filter_and_sort_contents
;;
3) 
echo "Exiting the Piping Commands Manager. Goodbye!"
exit 0
;;
*) 
echo "Invalid option. Please select 1-3."
;;
esac
echo "" 
done
