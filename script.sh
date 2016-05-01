#!/bin/sh

#Print the current date and time
echo "The current date and time is" 

#Print the first argument of the script
echo "the first argument is" $1
echo $?

#Print the current directory
echo "The current directory is " $PWD


#Test that the user which exectued the following code is the root user
ROOT_ID=0 
if [ $UID -ne $ROOT_ID ]
then
  echo "Must be root to run this script."
 #exit 0 
fi 

#show how to use color
RED="\e[31m"
END_COLOR="\e[0m"
#echo -e "\e[31mHello World\e[0m"i


#Case statement
case "$1" in
  abc)  echo "\$variable = abc" ;;
  xyz)  echo "\$variable = xyz" ;;
esac

#Get the current user $USER
currentUser=$(whoami)
echo "The current USER is " $currentUser;

#Print the current machine hostname
echo "The current hostname" $HOSTNAME


#Get the size of disk
df -g > ./size.txt
count= grep 100% ./size.txt|wc -l
echo $count
rm ./size.txt
