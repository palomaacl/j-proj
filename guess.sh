echo "Welcome to the guessing game!"

echo "Place your bet between 0 and 10: "

read VAR

secret=4

if [[ $VAR -gt $secret ]]
then
	echo "Too high!"
elif [[ $VAR -lt $secret ]]
then
	echo "Too low"
else 
	echo "Correct!"
fi
