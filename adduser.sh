#!/bin/bash
#Script auto create user SSH

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (day): " Activetime

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$Activetime days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "--------------------------------------"
echo -e "           Account Details"
echo -e "--------------------------------------"
echo -e "     Host: $IP"
echo -e "     Username: $Login "
echo -e "     Password: $Pass"
echo -e "     Expiration: $exp"
#echo -e "     Protocol: TCP" | lolcat
