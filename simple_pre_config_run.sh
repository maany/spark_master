#!/bin/bash
docker build -t spark_master_sh_pre_config ./sh/pre_config/
docker run -it -e "EXECUTION_ID=0" -v $(pwd)/:/component_repository spark_master_sh_pre_config bash