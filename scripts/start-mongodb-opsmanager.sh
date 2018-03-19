#!/bin/bash
./mongodb-linux*/bin/mongod --dbpath /data/ops-mgr-app \
                            --wiredTigerCacheSizeGB 1 \
                            --logpath /data/ops-mgr-app/mongod.log \
                            --fork \
                            --bind_ip_all

sleep 3

sudo ./mongodb-mms-*/bin/mongodb-mms start
