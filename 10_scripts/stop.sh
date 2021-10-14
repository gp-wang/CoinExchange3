/home/gaopeng/programs/kafka_2.12-1.0.1/bin/kafka-server-stop.sh
/home/gaopeng/programs/kafka_2.12-1.0.1/bin/zookeeper-server-stop.sh
/home/gaopeng/programs/zookeeper-3.4.10/bin/zkServer.sh stop
kill $(ps aux | grep redis | head -n1 | awk '{print $2}')
sudo systemctl stop mysql
#/usr/redis/redis-server /usr/redis/redis.conf &




