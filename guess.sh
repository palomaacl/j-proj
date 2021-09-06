echo "Welcome to the guessing game!"

echo "Place your bet between 0 and 100: "

read guess

secret=$((RANDOM%100))

while [ $guess != $secret ]
do 
	echo "Try again!"
read guess
	done
echo "Correct! The number was $secret!"

