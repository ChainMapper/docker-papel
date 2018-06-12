# docker-papel
Wallet and daemon for Papel [PAPEL] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/papel` and see the wallet starting.

```
Docker PAPEL wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
PAPEL: Pm9rsFWN5NqRwcpZG75LMNMPUdaR9y1S1H

Starting PAPEL daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/papel.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

PAPEL: Pm9rsFWN5NqRwcpZG75LMNMPUdaR9y1S1H

# License
MIT, see LICENSE file