#!/bin/sh

WORK_DIR="../00_framework"
if [ !  -d "$WORK_DIR" ]; then
    echo "ERROR: $WORK_DIR not exists!, will exit not"
    exit 1
fi



apps="cloud exchange exchange-api market ucenter-api wallet chat otc-api admin bitrade-job"


for app in $apps; do
    xterm -title "$app" -hold -e "(cd ${WORK_DIR}/${app}/target;java -jar *.jar)" &
done;
