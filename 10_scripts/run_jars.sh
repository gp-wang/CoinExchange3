#!/bin/bash

WORK_DIR=$(realpath "../00_framework")
if [ !  -d "$WORK_DIR" ]; then
    echo "ERROR: $WORK_DIR not exists!, will exit not"
    exit 1
fi

LOG_DIR=$(realpath "../11_logs")
if [ !  -d "$LOG_DIR" ]; then
    echo "log dir not exist yet, creating log dir: $LOG_DIR"
    mkdir $LOG_DIR
fi


apps="cloud exchange exchange-api market ucenter-api wallet chat otc-api admin bitrade-job"


for app in $apps; do
    xterm -title "$app" -hold -e "(cd ${WORK_DIR}/${app}/target;java -jar -Xms512m -Xmx512m -Xmn200m -Xss256k *.jar 2>&1 > $LOG_DIR/$app.log & tail -f $LOG_DIR/$app.log)" &
    if [[ "$app" == "exchange" ]]; then
        #sleep 80
        tail -f -n0 $LOG_DIR/$app.log |  grep -qe "程序启动成功"
        #expect "程序启动成功"
    fi
done;
