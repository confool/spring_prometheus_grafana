#!/bin/sh
./mvnw package
rm -f target/app.jar
cp target/demo.elk-0.0.1-SNAPSHOT.jar target/app.jar
docker-compose build
docker-compose scale app=0
docker-compose up -d