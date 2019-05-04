FROM ubuntu:18.04

LABEL maintainer="drew9781@yahoo.com"

RUN apt update && apt install -y bind9 dnsutils && apt clean && rm -r /etc/bind
RUN mkdir /var/log/bind

EXPOSE 1053/udp 1053/tcp

CMD ["/usr/sbin/named", "-f"]