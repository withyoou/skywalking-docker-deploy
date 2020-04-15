#!/bin/bash
docker stop oap
docker rm oap
docker run --name oap -p 11800:11800 -p 12800:12800 \
 --restart always -d \
 -e EXT_CONFIG_DIR=/home/inceptio/skywalking/es7-bin/config \
 apache/skywalking-oap-server:7.0.0-es7