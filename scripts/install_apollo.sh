#!/bin/bash
apt update -y
apt install -y curl gnupg nginx nodejs npm git
npm install -g n
n latest
mkdir -p /opt/apollo && cd /opt/apollo
npx create-apollo-server@latest
nohup node index.js &
