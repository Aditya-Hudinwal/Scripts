#! /bin/bash
read -p 'enter 1 for useradd and 2 for user info: ' USER_WANT

if [ $USER_WANT == 1 ];then
	read -p "Please enter new username"  USER_NAME
	useradd $USER_NAME
	echo 'user add successfully'

elif [ $USER_WANT == 2 ];then
	read -p "Please enter old username" USER_NAME
	id $USER_NAME

else
	echo 'galat input sahi de'
fi
