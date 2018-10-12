#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
listen=1
server=1
addnode=35.211.177.172:21999
addnode=80.211.68.130:21999
addnode=207.246.65.179:21999
addnode=217.61.110.51:21999
addnode=155.94.222.186:21999
addnode=117.4.65.188:21999
EOF