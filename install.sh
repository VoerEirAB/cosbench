#!/bin/bash

export file_name="cosbench-674fa86.tgz"
export folder_name="cosbench-674fa86"
export VERSION="0.4.7"

install_path=$1

# install dependencies
sudo -E apt-get update
DEBIAN_FRONTEND=noninteractive
sudo -E apt-get install --assume-yes dpkg apt-transport-https curl apt-utils netcat net-tools openjdk-8-jre openjdk-8-jre-headless

cp ${file_name} /tmp/
tar xf /tmp/${file_name} -C /tmp \
    && mv /tmp/${folder_name} ${install_path} \
    && rm -f /bin/sh && ln -s /bin/bash /bin/sh

cp start-cosbench.sh $install_path/
