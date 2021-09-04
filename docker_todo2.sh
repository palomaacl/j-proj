echo "Hello, what would you like todo today?"

read VAR

if [[ "$VAR" == "insert" ]]
then 
	echo "Please type the new task, and hit Enter when done"
	read APPEND
	echo "$APPEND" >>  todo.txt 

elif [[ "$VAR" == "list" ]]
then
	 $(cat -n todo.txt)

elif [[ "$VAR" == "filter" ]]
then
	echo "By which word?"
read WORD | echo $(grep $WORD -i todo.txt)

elif [[ $VAR == "delete" ]]
then
        echo "Delete which todo?"
read DEL 
	sed -i ' '$DEL'd' todo.txt
else
	echo "Sorry, that command is not available.
Type Insert to add a new task
Type List to display your current tasks
Type Filter to display only todos with a specific word 
Type Delete to erase a specific todo selected by index number"
fi

#find way to put new line on "list"
#found, but it had to replace the numbers
