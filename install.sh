#!/bin/bash
echo "===This is used to create shadowsocks server==="
apt-get install shadowsocks
echo "input server ip addr:"
read sip
echo "your sip = $sip, input password"
read password
FILE="/etc/shadowsocks.json"
echo "password is $password,generate $FILE"
touch $FILE
echo -e "{" > $FILE
echo -e "\t\"server\":\"$sip\"," >> $FILE
echo -e "\t\"server_port\":443," >> $FILE
echo -e "\t\"local_address\": \"127.0.0.1\"," >> $FILE
echo -e "\t\"local_port\":1080," >> $FILE
echo -e "\t\"password\":\"$password\"," >> $FILE
echo -e "\t\"timeout\":300," >> $FILE
echo -e "\t\"method\":\"aes-256-cfb\"," >> $FILE
echo -e "\t\"fast_open\": true" >> $FILE
echo -e "}" >> $FILE

wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh
./bbr.sh
