#!/bin/bash
apt update -y
apt install -y apm-server

systemctl enable apm-server
systemctl start apm-server
