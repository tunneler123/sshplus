##Download script
wget https://raw.githubusercontent.com/tunneler123/sshplus/master/script.py
##Screen
apt-get install screen -y
##python install
apt-get install python -y
###Work
chmod a+x script.py
screen -dmS screen python ./script.py
###TUNNELER###
clear
echo -e "\e[1;32m PYTHON PROXY INSTALLED \e[0m"
echo -e "\e[1;32m DEFAULT PORT IS 80 \e[0m"
