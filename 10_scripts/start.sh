sudo systemctl start mysql
/usr/redis/redis-server /usr/redis/redis.conf &
/home/gaopeng/programs/zookeeper-3.4.10/bin/zkServer.sh start
/home/gaopeng/programs/kafka_2.12-1.0.1/bin/zookeeper-server-start.sh /home/gaopeng/programs/kafka_2.12-1.0.1/config/zookeeper.properties &
/home/gaopeng/programs/kafka_2.12-1.0.1/bin/kafka-server-start.sh /home/gaopeng/programs/kafka_2.12-1.0.1/config/server.properties &
