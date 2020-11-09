#! /bin/bash
# username.sh
# Nate Bernstein 
echo "Enter a username: "
echo "Use lower case characters, digits and underscore only. "
echo "It must start with a lower case character."
echo "It must contain at least 3 but not more than 12 characters" 
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][0-9,_,a-z]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
