FROM debian:buster-slim

LABEL maintainer="OpenclasRoom TP3 Arnaud Kaninda <kanindaarnaud@outlook.fr>"
RUN apt-get update
RUN apt-get install -y nginx
CMD ["/usr/sbin/sshd","-D"
EXPOSE 22
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80

RUN apt-get install -y  openssh-server
RUN service ssh start
EXPOSE 22

