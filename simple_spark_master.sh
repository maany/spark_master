#!/bin/bash
### CLEANUP ####
docker stop simple_spark_master && docker rm simple_spark_master

### BOOT EVENT ###
sudo docker build -t simple_spark_master sh/
sudo docker run -itd \
    --name simple_spark_master \
    --privileged \
    -p 7077:7077 \
    -p 8080:8080 \
    -p 6066:6066 \
    -v $(pwd)/sh/config:/etc/simple_grid/config \
    -v $(pwd)/augmented_site_level_config_file.yaml:/etc/simple_grid/augmented_site_level_config_file.yaml \
    simple_spark_master

#### PRE INIT HOOKS #####


### INIT EVENT ######
#sudo docker exec -it simple_spark_master /etc/simple_grid/config/init.sh

#### POST INIT HOOKS ######