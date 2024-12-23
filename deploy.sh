#!/usr/local/bin/bash

ssh root@brick.01z.io 'sudo -i -u deploy bash -c "cd /var/www/sirodoht && git pull"'
scp sirodoht.caddy root@brick.01z.io:/etc/caddy/sirodoht.caddy
ssh root@brick.01z.io 'systemctl restart caddy'

