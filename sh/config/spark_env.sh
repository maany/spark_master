#!/bin/bash

export SPARK_MASTER_HOST=`hostname`

export SPARK_HOME=/spark

export SPARK_CONF_DIR="${SPARK_CONF_DIR:-"${SPARK_HOME}"/conf}"

