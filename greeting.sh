name=$(whoami)
hour=$(date +"%H")
if [[ $hour -gt 12 ]]
then
	echo "Good afternoon, $name!"
else
	echo "Good morning, $name!"
fi
