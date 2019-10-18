#!/bin/bash
echo"
1.creat a userid
2.delete the userid
3.lock the userid
4.unlock the userid
5.check userid
6.exitscript
"
while:
do
read -p"PLEASE ENTER YOUR OPTION"user
#check user id

if[$user -eq 1]
then
read -p "please enter your username:" name
id $name &> /dev/null
if[$? -eq 0]
then
echo "the username already been used"
else
read -p"please enter your password" mi
useradd $name && echo "$mi"|password --stdin
$name &>/dev/null
echo" the user add sucess"
fi
fi

#delete user id
if [$user -eq 2]
then
read -p "please enter your username" name
id $name &>/dev/nullif[ $? -eq 0]
then userdel -r name
echo "delete userid sucess"
else
echo "user id  is not existe"

if [$user -eq 3]
then"please enter the username:" name
grep $name /etc/shadow | grep '!' &> /dev/null

if [ $? -ne 0 ]
then
passwd -l $name &> /dev/null
echo "user has been sucessful locked"
else
echo "user not has been locked sucessfully"
fi
fi


if [ $user -eq 4 ]
then
read -p "please enter your username：" name
grep $name /etc/shadow | grep '!' &> /dev/null

if [ $? -eq 0 ]
then
passwd -u -f $name &> /dev/null
echo "user has been sucessful unlocked"
else
echo "user not has been unlocked sucessfully"
fi
fi


# check user
if [$user -eq 5]
then"please enter the username:" name
grep $name/etc/password&>/dev/null
if[$? -eq 0]
then
finger $name
echo "enter success"
else
echo "the user is not existe"
fi
fi

#exit script
if[$user -eq 6]
then 
exit fi
done