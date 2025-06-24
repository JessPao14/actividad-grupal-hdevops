#!/bin/bash
apt update -y
apt install -y wget apt-transport-https openjdk-11-jdk -y

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

apt update && apt install -y elasticsearch kibana logstash

systemctl enable elasticsearch && systemctl start elasticsearch
systemctl enable kibana && systemctl start kibana
systemctl enable logstash && systemctl start logstash
