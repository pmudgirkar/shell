#!/bin/bash

#check the user is root or not
if [ "$(id -u)" -ne 0]; then echo "you must have root access to exicute this script"
exit 1
fi

echo "file systeam management"
echo "1. create directry"
echo "2. set permission"
echo "3. check disc usage"
echo "4. exit"

read -p "enter your choice: "  choice

case $choice in
	1)
		read -p "enter directory name to create: " dirname
		mkdir -p $dirname && echo "directory $diranme is created "
		;;
	2)
		read -p "enter directory path or file path: " path
		read -p "enter permission (e.g 777): " permission
	        chmod $permission $path && echo "the permission set to $permission for $path"
		;;
	3)
		df -h && echo "disk usage displayed"
		;;
	4)
	       exit 0
	       ;;
       *)
	       echo "invalid option"
	       ;;
esac
               	       



	 

