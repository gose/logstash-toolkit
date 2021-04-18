#!/bin/bash
  
if [ $# -eq 0 ]; then
    echo "Usage: run.sh <pipeline.yml>"
    exit
fi

echo "Running pipeline: $1 ..."
logstash \
  --config.reload.automatic \
  --path.data tmp \
  --path.settings settings \
  -f $1
