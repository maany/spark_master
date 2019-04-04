#!/bin/bash

. "/etc/simple_grid/config/spark-config.sh"
. "/etc/simple_grid/config/spark_env.sh"


cat /etc/simple_grid/config/spark_env.sh >> ~/.bashrc

source ~/.bashrc
mkdir -p $SPARK_MASTER_LOG

#ln -sf /dev/stdout $SPARK_MASTER_LOG/spark-master.out

echo "Copying spark-master service to /etc/init.d"
cp /etc/simple_grid/config/spark-master /etc/init.d/
chmod 755 /etc/init.d/spark-master

echo "Starting Spark Master"
service spark-master start
echo "Checking status of Spark Master"
service spark-master status