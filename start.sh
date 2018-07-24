#!/bin/bash
echo "Docker PAPEL wallet

By: ChainMapper
Website: https://chainmapper.com"

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.papelcore/wallet.dat
fi

/gen_config.sh > /data/.papelcore/papel.conf

echo "Starting PAPEL daemon..."
papeld
