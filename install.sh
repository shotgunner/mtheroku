#! /bin/bash
cd /mt
docker run --ulimit nofile=90000:90000 -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data -e SECRET=1dbf5c48562888c34c4dab4a97c9e780 telegrammessenger/proxy:latest
docker logs mtproto-proxy
