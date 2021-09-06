echo "Hello, what would you like todo today?"

read action

if [[ "$action" == "add" ]]
then 
	echo "Please type the new task, and hit Enter when done"
	read task
	echo "$task" >>  todo.txt 

elif [[ "$action" == "list" ]]
then
	# $(cat -n todo.txt)
	cat -n todo.txt

elif [[ "$action" == "search" ]]
then
	echo "By which word?"
   read searchterm
   echo $(grep $searchterm -i todo.txt)

#if no echo, bash tries to execute the result as a command
elif [[ $action == "delete" ]]
then
        echo "Delete which todo?"
read del 
# sed -i ' '$del'd' todo.txt
	sed -i "${del}d" todo.txt
else
	echo "Sorry, that command is not available.
Type Insert to add a new task
Type List to display your current tasks
Type Filter to display only todos with a specific word 
Type Delete to erase a specific todo selected by index number"
fi

#find way to put new line on "list"
#found, but it had to replace the numbers
