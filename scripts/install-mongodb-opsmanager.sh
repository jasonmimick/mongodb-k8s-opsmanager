#!/bin/bash

git clone ${MONGODB_K8S_OPSMGR_REPO}

mongodb_archive="mongodb-linux-x86_64-rhel70-3.6.3.tgz"
mms_archive="mongodb-mms-3.6.4.619-1.x86_64.tar.gz"
mongodb_download="https://fastdl.mongodb.org/linux/${mongodb_archive}"
mms_download="https://downloads.mongodb.com/on-prem-mms/tar/${mms_archive}"

curl -OL ${mongodb_download}
curl -OL ${mms_download}

tar xvf ./${mongodb_archive}
tar xvf ./${mms_archive}

mkdir /data/ops-mgr-app

source ./scripts/start-mongodb-opsmanager.sh

tail -f ./mongodb-mms*/log/mms0.log
