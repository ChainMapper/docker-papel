# docker-papel
Wallet and daemon for Papel [PAPEL] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" -e "RPCPORT=22000" chainmapper/papel` and see the wallet starting.

```
Docker PAPEL wallet

By: ChainMapper
Website: https://chainmapper.com

Starting PAPEL daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the wallet file using a volume pointing to `/config/wallet.data`

# License
MIT, see LICENSE file