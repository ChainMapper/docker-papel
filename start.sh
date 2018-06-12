#!/bin/bash
echo "Docker PAPEL wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
PAPEL: Pm9rsFWN5NqRwcpZG75LMNMPUdaR9y1S1H"

config="/config/papel.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.papelcore/papel.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.papelcore/wallet.dat
fi

echo "Starting PAPEL daemon..."
papeld
