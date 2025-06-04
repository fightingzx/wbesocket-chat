#!/usr/bin/env bash
app_name='websocket-chat'
docker stop ${app_name}
echo '----stop container----'
docker rm ${app_name}
echo '----rm container----'
docker rmi `docker images | grep none | awk '{print $3}'`
echo '----rm none images----'
echo '----build websocket-chat image---'
docker build -t ${app_name} .
docker run -p 8080:8080 --name ${app_name} \
echo '----start container----'