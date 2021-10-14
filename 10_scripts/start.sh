#! /bin/bash

sudo systemctl start mysql
/usr/redis/redis-server /usr/redis/redis.conf &
/home/gaopeng/programs/kafka_2.12-1.0.1/bin/zookeeper-server-start.sh /home/gaopeng/programs/kafka_2.12-1.0.1/config/zookeeper.properties &
/home/gaopeng/programs/kafka_2.12-1.0.1/bin/kafka-server-start.sh /home/gaopeng/programs/kafka_2.12-1.0.1/config/server.properties &
/home/gaopeng/programs/mongodb/mongod --config /home/gaopeng/programs/mongodb/mongodb.conf

