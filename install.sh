##upgrade
apt-get update
apt-get upgrade -y
##Download script
wget https://raw.githubusercontent.com/tunneler123/sshplus/master/script.py
##Screen
apt-get install screen -y
##python install
apt-get install python -y
###Work
chmod a+x script.py
screen -dmS screen python ./script.py
cd /usr/bin
wget -O account https://raw.githubusercontent.com/tunneler123/sshplus/master/account.sh
chmod +x account
###TUNNELER###
clear
echo -e "\e[1;32m SSH INSTALLED DONE \e[0m"
echo -e "\e[1;32m DEFAULT PORT IS 80 \e[0m"
echo -e "\e[1;32m type "account" to add user \e[0m"

