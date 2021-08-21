#bin/bash

# "winlogbeat jornalbeat 根据个人信息来选择是否下载"

ELK="elasticsearch 
kibana
logstash"

BEAT="filebeat
packetbeat
metricbeat
heartbeat
auditbeat"

url='https://artifacts.elastic.co/downloads'

os='x86_64.rpm'

read -p "请输入要下载的软件elk或beat:" y
read -p "请输入版本号:" Y


if [ $y == "elk" -o $y == "beat" ];then


if [ $y == "elk" ];then
    mkdir ./elk
    cd elk
    echo "start downloading elk installaiton package"
    echo "================================================"
    for i in $ELK
    do
    echo "$url"/$i/$i-$Y-$os
    wget "$url"/$i/$i-$Y-$os
    done
    echo "Download complete"
    exit
fi



if [ $y == "beat" ];then
    mkdir ./beat
    cd beat
    echo "start downloading beat installaiton package [RPM]"
    echo "================================================"
    for i in $BEAT
    do
    echo "$url"/beats/$i/$i-$Y-$os
    wget "$url"/beats/$i/$i-$Y-$os
    done
    echo "Download complete"
    exit
fi


fi
echo "Input error exited"
echo "================================================"
exit

        