FROM debian:buster-slim

LABEL maintainer="OpenclasRoom TP3 Arnaud Kaninda <kanindaarnaud@outlook.fr>"
RUN apt-get update
RUN apt-get install -y nginx openssh-server net-tools sudo

RUN useradd -rm -d /home/kani -s /bin/bash -g root -G sudo -u 1000 kani

RUN  echo 'kani:kani' | chpasswd

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 22 80
ENTRYPOINT /bin/sh -c "echo hello && service --status-all && service ssh start && /usr/sbin/nginx"

RUN useradd -ms /bin/bash  arnaud
WORKDIR /home/arnaud
