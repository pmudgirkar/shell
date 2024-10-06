#!/bin/bash

if ["$(id -u)" -ne 0]; then echo "you dont have admin permission"
exit 1
fi

# Display options
echo "1. add user"
echo "2. delete user"
echo "3. list user"
echo "4. add group"
echo "5. group delete"
echo "6. list group"
echo "7. exit"

read -p "enter your choice:" choice

case $choice in
	1)
		read -p "enter username to add:" user
		useradd $user && echo "user $user added"
		;;
        2)
		read -p "enter name of user to delete:" user
		userdel $user && echo user "user $user deleted"
		;;
	3)
		echo "listing all users"
		cut -d: -f1 /etc/passwd
		;;
	4)
		read -p "add group name:" group
		groupadd $group && echo "$group added"
		;;
	5)
		read -p "enter name of group to delete:" group
		groupdel $group && echo "$group deleted"
		;;
	6)
		echo "listing groups"
		cut -d: -f1 /etc/group
		;;
	7)
		exit 0
		;;
	8)
		echo "invalid option"
		;;
esac










	



