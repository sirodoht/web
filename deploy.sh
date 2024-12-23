#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

ssh root@brick.01z.io 'sudo -i -u deploy bash -c "cd /var/www/sirodoht && git pull"'
scp sirodoht.caddy root@brick.01z.io:/etc/caddy/sirodoht.caddy
ssh root@brick.01z.io 'systemctl restart caddy'
