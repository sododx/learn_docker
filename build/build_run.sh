#!/bin/bash
docker volume prune
docker rmi sododx/nginx:v1.0_test
docker build --rm=true --tag=sododx/nginx:v1.0_test  ../ 
docker run  -ti --rm  --hostname web --dns 114.114.114.114 -p 8888:80  --name nginx_web  sododx/nginx:v1.0_test
