#!/bin/bash

set -x
source ~/.bashrc

#!/bin/bash
now="$(date +'%d_%m_%Y_%H_%M_%S')"

cd /home/wpe-user/sites/db-backup && rm db-old.sql
mysqldump -h <Your DATABASE SERVER Public> -u dbuser -p'$dbpassword' database_name > /home/wpe-user/sites/db-dump/db$now.sql
#Sleep 5 seconds
sleep 5
cd /home/wpe-user/sites/db-dump && wp db import *.sql
cd /home/wpe-user/sites/db-dump && wp search-replace 'example.local/wp' 'example.wpengine.com' --all-tables --precise
cd /home/wpe-user/sites/db-dump && mv  *.sql home/wpe-user/sites/db-backup/

