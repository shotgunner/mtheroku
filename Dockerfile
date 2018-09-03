
FROM alpine:latest
#FROM heroku/heroku:18

#RUN mkdir -m 777 /mt
#ADD install.sh /install.sh
#RUN chmod +x /install.sh 
RUN docker run --ulimit nofile=90000:90000 -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data -e SECRET=1dbf5c48562888c34c4dab4a97c9e780 telegrammessenger/proxy:latest
#CMD /install.sh
