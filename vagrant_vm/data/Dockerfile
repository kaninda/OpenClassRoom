FROM debian:buster-slim

LABEL maintainer="OpenclasRoom TP3 Arnaud Kaninda <kanindaarnaud@outlook.fr>"
RUN apt-get update
RUN apt-get install -y nginx openssh-server

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 22 80
ENTRYPOINT /bin/sh -c "echo hello && service --status-all && service ssh start && /usr/sbin/nginx"


