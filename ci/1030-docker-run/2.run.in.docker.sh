#!/usr/bin/env bash

set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

echo "============================================================================"
pwd

echo "============================================================================"
whoami

echo "============================================================================"
env

echo "============================================================================"
# TODO HERE

cd ~
if [ -d versions ];then
    rm -rf versions
fi
mkdir versions
cd versions
dnf list installed > dnf.list.installed.txt
dnf list > dnf.list.txt

sed -i '1,2d' dnf.list.installed.txt
sed -i '1d' dnf.list.txt

echo "============================================================================"
