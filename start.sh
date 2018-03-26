#!/bin/bash  
FILE="/etc/shadowsocks.json"
ssserver -c $FILE --user nobody -d start