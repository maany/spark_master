#!/bin/bash

. "/etc/simple_grid/config/spark-config.sh"
. "/etc/simple_grid/config/spark_env.sh"


cat /etc/simple_grid/config/spark_env.sh >> ~/.bashrc

source ~/.bashrc
mkdir -p $SPARK_MASTER_LOG

ln -sf /dev/stdout $SPARK_MASTER_LOG/spark-master.out

cd /spark/bin && /spark/sbin/../bin/spark-class org.apache.spark.deploy.master.Master \
    --ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> $SPARK_MASTER_LOG/spark-master.out