#!/bin/bash
docker stop oap-ui
docker rm opa-ui
docker run --name oap-ui -p 8087:8080 \
 --restart always -d -e SW_OAP_ADDRESS=172.17.0.1:12800 \
  apache/skywalking-ui:7.0.0