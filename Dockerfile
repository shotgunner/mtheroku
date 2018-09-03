
FROM alpine:latest
#FROM heroku/heroku:18

RUN mkdir -m 777 /mt
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 
CMD /entrypoint.sh
