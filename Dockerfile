
FROM alpine:latest
#FROM heroku/heroku:18

RUN mkdir -m 777 /mt
ADD install.sh /install.sh
RUN chmod +x /install.sh 
CMD /install.sh
